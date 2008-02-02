class AddUserId < ActiveRecord::Migration
  def self.up
        add_column :user_profiles, :user_id, :integer
  end

  def self.down
        remove_column :user_profiles, :user_id
  end
end
