class CreatePermissions < ActiveRecord::Migration
  def self.up
    create_table :permissions do |t|
        t.integer :role_id, :user_id, :null => false
        t.integer :updated_by
        t.timestamps
    end
    
    # Make sure the role migration file was generated first
    Role.create(:name => 'super user')
    # Then, add default admin user
    # Be sure change the password later or in this migration file
    user = User.new
    user.login = "super"
    user.email = "captproton@ilikeutah.com"
    user.password = "melorbode"
    user.password_confirmation = "melorbode"
    user.save(false)
    user.send(:activate!)

    role = Role.find_by_name('super user')
    user = User.find_by_login('super')

    permission = Permission.new
    permission.role = role
    permission.user = user
    permission.save(false)
    
  end

  def self.down
      drop_table :permissions
      Role.find_by_name('super user').destroy
      User.find_by_login('super').destroy
  end
end
