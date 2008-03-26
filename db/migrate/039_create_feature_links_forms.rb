class CreateFeatureLinksForms < ActiveRecord::Migration
  def self.up
    create_table :feature_links_forms do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :feature_links_forms
  end
end
