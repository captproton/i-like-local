class CreateRealEstates < ActiveRecord::Migration
  def self.up
    create_table :real_estates do |t|
        t.string    :value, :value02, :value03, :contact_name, :contact_email, :contact_company, :category, :contact_street, :contact_city, :contact_metro
        t.integer   :property_listing_id, :property_form_id, :contact_phone, :contact_zip_code
        t.boolean   :anonymous, :include_map, :prepop_post
        
        ## page 2
        t.string    :parking_type, :lot_type, :property_type
        t.integer   :units, :contact_MLS, :year_built, :price, :hoa, :living_space, :lot_size, :parking_spaces, :fsbo, :bedrooms, :bathrooms, :partial_bathrooms, :floors
        t.text      :headline
        
        ## page 3  --note that special features is its own model and migration 044
        t.text      :additional_msg, :embedded_video
        t.string    :virtual_tour, :property_url
        
      t.timestamps
    end
  end

  def self.down
    drop_table :real_estates
  end
end
