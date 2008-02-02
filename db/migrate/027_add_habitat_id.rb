class AddHabitatId < ActiveRecord::Migration
  def self.up
        add_column :foreclosures, :habitat_id, :integer
  end

  def self.down
        remove_column :foreclosures, :habitat_id
  end
end
