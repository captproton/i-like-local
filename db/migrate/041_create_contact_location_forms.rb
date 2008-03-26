class CreateContactLocationForms < ActiveRecord::Migration
  def self.up
    create_table :contact_location_forms do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :contact_location_forms
  end
end
