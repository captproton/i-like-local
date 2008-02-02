class HabitatCity < ActiveRecord::Migration
  def self.up
        add_column :habitats, :city_id, :integer
  end

  def self.down
        remove_column :habitats, :city_id
  end
end
