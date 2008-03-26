class CreatePropertyForms < ActiveRecord::Migration
  def self.up
    create_table :property_forms do |t|
        t.string :type, :text, :tag 
        t.integer :property_listing_id
        t.timestamps  
        
    end
  end

  def self.down
    drop_table :property_forms
  end
end
