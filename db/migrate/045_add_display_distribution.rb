class AddDisplayDistribution < ActiveRecord::Migration
  def self.up
        add_column :real_estates, :property_actively_listed, :boolean
  end

  def self.down
        remove_column :real_estates, :property_actively_listed
  end
end
