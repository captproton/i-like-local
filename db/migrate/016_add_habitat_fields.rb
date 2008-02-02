class AddHabitatFields < ActiveRecord::Migration
  def self.up
        add_column :habitats, :unit_number, :string
        add_column :habitats, :longitude, :integer
        add_column :habitats, :latitude, :integer
        add_column :habitats, :geocode_type, :integer
        add_column :habitats, :display_address, :boolean
        add_column :habitats, :lot_size, :integer
        add_column :habitats, :date_listed, :datetime
        add_column :habitats, :date_sold, :datetime
        add_column :habitats, :mlsId, :string
        add_column :habitats, :provider_listingId, :string
  end

  def self.down
        remove_column :habitats, :unit_number
        remove_column :habitats, :longitude
        remove_column :habitats, :latitude
        remove_column :habitats, :geocode_type
        remove_column :habitats, :display_address
        remove_column :habitats, :lot_size
        remove_column :habitats, :date_listed
        remove_column :habitats, :date_sold
        remove_column :habitats, :mlsId
        remove_column :habitats, :provider_listingId
  end
end
