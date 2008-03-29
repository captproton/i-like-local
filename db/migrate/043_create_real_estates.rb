class CreateRealEstates < ActiveRecord::Migration
  def self.up
    create_table :real_estates do |t|
        t.string    :value
        t.integer   :property_listing_id, :property_form_id

      t.timestamps
    end
  end

  def self.down
    drop_table :real_estates
  end
end
