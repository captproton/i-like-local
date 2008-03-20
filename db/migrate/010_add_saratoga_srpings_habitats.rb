class AddSaratogaSrpingsHabitats < ActiveRecord::Migration
  def self.up
        rename_column :habitats, :city, :city_name
     
  end

  def self.down
      rename_column :habitats, :city_name, :city
  end
end
