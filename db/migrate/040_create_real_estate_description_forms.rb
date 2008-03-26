class CreateRealEstateDescriptionForms < ActiveRecord::Migration
  def self.up
    create_table :real_estate_description_forms do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :real_estate_description_forms
  end
end
