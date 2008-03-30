class CreateRealEstates < ActiveRecord::Migration
  def self.up
    create_table :real_estates do |t|
        t.string    :value, :value02, :value03, :contact_name, :contact_email, :contact_company, :category, :contact_street, :contact_city, :contact_metro
        t.integer   :property_listing_id, :property_form_id, :contact_phone, :contact_zip_code
        t.boolean   :anonymous, :include_map, :prepop_post
      t.timestamps
    end
  end

  def self.down
    drop_table :real_estates
  end
end
