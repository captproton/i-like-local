class CreateSpecialFeatures < ActiveRecord::Migration
  def self.up
    create_table :special_features do |t|
      t.string :description
      t.integer :parent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :special_features
  end
end
