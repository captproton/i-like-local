class CreateHabitats < ActiveRecord::Migration
  def self.up
    create_table :habitats do |t|
        t.column :street,                   :string
        t.column :city,                     :string
        t.column :state,                    :string
        t.column :zip,                      :string
        t.column :price,                    :integer
        t.column :parent_community_id,      :integer
        t.column :parent_listing_link,      :string
        t.column :available,                :boolean, :default => 1
        t.column :property_type,            :string
        t.column :no_bathrooms,             :decimal, :precision => 8, :scale => 2, :default => 0
        t.column :no_bedrooms,              :decimal, :precision => 8, :scale => 2, :default => 0
        t.column :year_built,               :integer, :default => 0
        t.column :featured,                 :boolean, :default => 0
        t.column :open_house,               :boolean, :default => 0
        t.column :description,              :text
        t.column :offer_type,               :boolean, :default => 0
        t.column :created_at,               :datetime
        t.column :updated_at,               :datetime
        t.column :visits_count,             :integer, :default => 0
        t.column :attachable_type,          :string
        t.column :attachable_id,            :integer
        t.column :parent_id,                :integer
        t.column :sq_feet,                  :integer
        t.column :first_day_on_market,      :datetime
        
        
        
    end
  end

  def self.down
    drop_table :habitats
  end
end
