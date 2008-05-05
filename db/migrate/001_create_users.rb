class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table "users", :force => true do |t|
      t.column :login,                     :string
      t.column :email,                     :string
      t.column :crypted_password,          :string, :limit => 40
      t.column :salt,                      :string, :limit => 40
      t.column :created_at,                :datetime
      t.column :updated_at,                :datetime
      t.column :last_login_at,             :datetime
      t.column :remember_token,            :string
      t.column :remember_token_expires_at, :datetime
      t.column :visits_count,              :integer, :default => 0
      t.column :time_zone,                 :string,  :default => 'Etc/UTC'
      t.column :permalink,                 :string
      ## restful_authentication update
      t.string :activation_code, :limit => 40
      t.datetime :activated_at
      t.string :password_reset_code, :limit => 40
      t.boolean :enabled, :default => true
      t.integer :updated_by
      t.timestamps
      
    end
  end

  def self.down
    drop_table "users"
  end
end
