class CreateLandingPages < ActiveRecord::Migration
  def self.up
    create_table :landing_pages do |t|
      t.column :lp_url, :text
      t.column :virtual_tour_url, :text
      t.column :habitat_id, :integer
    end
  end

  def self.down
    drop_table :landing_pages
  end
end
