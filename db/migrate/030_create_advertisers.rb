class CreateAdvertisers < ActiveRecord::Migration
  def self.up
    create_table :advertisers do |t|
      t.column :name, :string
      t.column :addr1, :string
      t.column :addr2, :string
      t.column :email, :text
    end
  end

  def self.down
    drop_table :advertisers
  end
end
