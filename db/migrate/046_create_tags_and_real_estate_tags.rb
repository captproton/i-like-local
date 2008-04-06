class CreateTagsAndRealEstateTags < ActiveRecord::Migration
  def self.up
        create_table :tags, :force => true do |t|
            t.column :name, :string, :limit => 255, :null => false, :unique => true
            t.column :property_feature, :boolean, :null => false, :default => false
            t.column :community_feature, :boolean, :null => false, :default => false
            t.column :special_feature, :boolean, :null => false, :default => false
          t.timestamps
        end
        
        create_table :real_estates_tags, :id => false, :force => true do |t|
          t.column :tag_id, :integer, :null => false
          t.column :real_estate_id, :integer, :null => false
          
          t.timestamps
        end
        
        say_with_time 'Adding foreign keys' do
            ## Add foreign key reference to real_estates_tags table
            execute 'ALTER TABLE real_estates_tags ADD CONSTRAINT fk_tb_tags FOREIGN KEY ( tag_id ) REFERENCES tags( id ) ON DELETE CASCADE'
            execute 'ALTER TABLE real_estates_tags ADD CONSTRAINT fk_tb_real_estates FOREIGN KEY ( real_estate_id ) REFERENCES real_estates( id ) ON DELETE CASCADE'
        end
 end

  def self.down
        drop_table :real_estates_tags
        drop_table :tags
  end
end
