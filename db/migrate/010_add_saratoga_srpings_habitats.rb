class AddSaratogaSrpingsHabitats < ActiveRecord::Migration
  def self.up
        rename_column :habitats, :city, :city_name
        Habitat.delete_all
      

           myhabitat = Habitat.create( :street               => "2745 Willow Dr",
           :city_id => "39",
      :city_name                => "Saratoga Springs", :state                => "UT",
      :zip                  => "84043", :price                => "292990", :no_bedrooms          => "5", :no_bathrooms         => "2", :sq_feet              => "3527", :property_type        => "Single-Family Home", :parent_listing_link  => "newhomesource.com")

            myhabitat.save

           myhabitat = Habitat.create( :street               => "2750 Aspen Dr",
           :city_id => "39",
           
      :city_name                => "Saratoga Springs", :state                => "UT",
      :zip                  => "84044", :price                => "300000", :no_bedrooms          => "6", :no_bathrooms         => "3", :sq_feet              => "3527", :property_type        => "Single-Family Home", :parent_listing_link  => "newhomesource.com")

            myhabitat.save
      
  end

  def self.down
      rename_column :habitats, :city_name, :city
      
      Habitat.delete_all
  end
end
