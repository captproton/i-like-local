class CreatePropertyListings < ActiveRecord::Migration
  def self.up
    create_table :property_listings do |t|
        t.string :state 
        t.timestamps 
        
    end
  end

  def self.down
    drop_table :property_listings
  end
end
