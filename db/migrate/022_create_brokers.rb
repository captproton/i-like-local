class CreateBrokers < ActiveRecord::Migration
  def self.up
    create_table :brokers do |t|
        t.column :habitat_id, :integer
        
      t.column :name, :string
      t.column :phone, :integer
      t.column :email, :text
      t.column :picture_url, :text
    end
  end

  def self.down
    drop_table :brokers
  end
end
