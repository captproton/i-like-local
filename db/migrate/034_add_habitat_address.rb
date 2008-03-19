class AddHabitatAddress < ActiveRecord::Migration
  def self.up
        add_column :habitats, :address, :text
  end

  def self.down
        remove_column :habitats, :address
  end
end
