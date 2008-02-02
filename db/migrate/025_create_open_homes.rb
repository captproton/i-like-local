class CreateOpenHomes < ActiveRecord::Migration
  def self.up
    create_table :open_homes do |t|
      t.column :habitat_id, :integer
      t.column :date, :datetime
      t.column :starttime, :datetime
      t.column :endtime, :datetime
      t.column :details, :text
    end
  end

  def self.down
    drop_table :open_homes
  end
end
