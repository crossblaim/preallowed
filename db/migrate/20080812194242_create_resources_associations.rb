class CreateResourcesAssociations < ActiveRecord::Migration
  def self.up
    create_table :resources_associations do |t|
      t.references :resource, :null => false
      t.references :role, :null => false

      t.timestamps
    end
    
    add_index :resources_associations, :resource_id
    add_index :resources_associations, :role_id 
    add_index :resources_associations, [:role_id, :resource_id], :unique => true 
    
  end

  def self.down
    remove_index :resources_associations, :resource_id
    remove_index :resources_associations, :role_id    
    remove_index :resources_associations, [:role_id, :resource_id]
    
    drop_table :resources_associations
  end
end
