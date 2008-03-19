class CreateHabitatTypes < ActiveRecord::Migration
  def self.up
    create_table :habitat_types do |t|
      t.column :description, :string
      t.column :created_on, :timestamp
      t.column :updated_on, :timestamp
    end
  end

  def self.down
    drop_table :habitat_types
  end
end
