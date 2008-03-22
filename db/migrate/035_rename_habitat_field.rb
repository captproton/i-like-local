class RenameHabitatField < ActiveRecord::Migration
  def self.up
        rename_column :habitats, :state, :state_code
  end

  def self.down
        rename_column :habitats, :state_code, :state
  end
end
