class RenameLatLong < ActiveRecord::Migration
  def self.up
        rename_column :habitats, :longitude, :lng
        rename_column :habitats, :latitude, :lat
  end

  def self.down
        rename_column :habitats, :lng, :longitude
        rename_column :habitats, :lat, :latitude
  end
end
