require File.dirname(__FILE__) + '/../test_helper'
require 'clients_controller'

# Re-raise errors caught by the controller.
class ClientsController; def rescue_action(e) raise e end; end

class ClientsControllerTest < Test::Unit::TestCase

  # def setup
  #   @controller = ClientsController.new
  #   @request    = ActionController::TestRequest.new
  #   @response   = ActionController::TestResponse.new
  #   #authenticate
  #   @request.env['HTTP_AUTHORIZATION'] = 
  #       ActionController::HttpAuthentication::Basic.encode_credentials(
  #         "admin", 
  #         "admin" 
  #       )     
  # end

  # def test_should_get_index
  #   get :index
  #   assert_response :success
  #   assert assigns(:clients)
  # end
  # 
  # def test_should_get_new
  #   get :new
  #   assert_response :success
  # end
  # 
  # def test_should_create_client
  #   old_count = Client.count
  #   post :create, :client => { }
  #   assert_equal old_count+1, Client.count
  #   
  #   assert_redirected_to client_path(assigns(:client))
  # end
  # 
  # def test_should_show_client
  #   get :show, :id => Client.find(:first).id
  #   assert_response :success
  # end
  # 
  # def test_should_get_edit
  #   get :edit, :id => Client.find(:first).id
  #   assert_response :success
  # end
  # 
  # def test_should_update_client
  #   put :update, :id => Client.find(:first).id, :client => { }
  #   assert_redirected_to client_path(assigns(:client))
  # end
  # 
  # def test_should_destroy_client
  #   old_count = Client.count
  #   delete :destroy, :id => Client.find(:first).id
  #   assert_equal old_count-1, Client.count
  #   
  #   assert_redirected_to clients_path
  # end

  # def test_should_destroy_client_and_return_xml_header
  #   accept 'text/xml'
  #   old_count = Client.count
  #   delete :destroy, :id => 1
  #   assert_equal old_count-1, Client.count
  #   assert_match 'application/xml', @response.headers['Content-Type']
  # end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
  
end
