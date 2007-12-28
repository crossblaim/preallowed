# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  # Pick a unique cookie name to distinguish our session data from others'
  session :session_key => '_preallowed_session_id'
  before_filter :logrequest
  after_filter :logresponse
  before_filter :authenticate 
  
  private
  
  def logrequest
    @log_record             = LogRecord.new
    @log_record.req_body    = request.body.string
    @log_record.req_headers = request.headers
    @log_record.req_method  = request.method
    @log_record.req_path    = request.path
    @log_record.save
  end
  
  def logresponse
    @log_record.resp_headers = response.headers
    @log_record.resp_status  = response.headers["Status"]
    @log_record.save
  end
  
  #todo: put in a logic to limit number of attempts to 3  
  def authenticate 
    authenticate_or_request_with_http_basic do |name, pass| 
      subject = Subject.find_by_name(name)
      # debugger
      if subject != nil
        stored_hashed_password = ""
        stored_salt = ""
        subject.principals.each do |principal|
          stored_hashed_password = principal.value if principal.principal_type.name == "hashed_password"
          stored_salt = principal.value if principal.principal_type.name == "salt"
        end
        
        string_to_hash = pass + "wibble" + stored_salt
        hashed_password = Digest::SHA1.hexdigest(string_to_hash)
        return true if(hashed_password == stored_hashed_password)        
      end
    end 
  end 

end
