class PostletSpawn < ActiveRecord::Migration
  def self.up
        add_column :habitats, :property_listing_id, :integer
        add_column :habitats, :property_form_id, :integer
  end

  def self.down
        remove_column :habitats, :property_listing_id
        remove_column :habitats, :property_form_id
  end
end
