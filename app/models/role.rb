class Role < ActiveRecord::Base
  belongs_to :client

  has_many :subjects_associations
  has_many :subjects, :through => :subjects_associations, :uniq => true 

  has_many :resources_associations
  has_many :resources, :through => :resources_associations, :uniq => true 

  validates_length_of :name, :within     => 3..30
  
end