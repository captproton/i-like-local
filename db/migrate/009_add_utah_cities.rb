class AddUtahCities < ActiveRecord::Migration
  def self.up
      down
      
      mycity = City.create(:name => "American Fork", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Beaver", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Bluffdale", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Bountiful", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Cedar City", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Clearfield", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Clinton", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Cottonwood Heights", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Draper", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Eagle Mountain", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Enoch", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Heber City", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Herriman", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Highland", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Holladay", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Hooper", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Hurricane", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Kanab", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Kaysville", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Layton", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Lehi", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Logan", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Midway", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Milford", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Murray", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Ogden", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Orem", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Panguitch", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Park City", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Pleasant Grove", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Pleasant View", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Provo", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Riverton", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Roosevelt", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Roy", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Saint George", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Salt Lake City", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Sandy", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Saratoga Springs", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "South Jordan", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Spanish Fork", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Springville", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Syracuse", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Taylorsville", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Tooele", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Vernal", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "Washington", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "West Haven", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "West Jordan", :state_id => "45")     
       mycity.save
            mycity = City.create(:name => "West Valley City", :state_id => "45") 
       mycity.save
       
  end

  def self.down
      City.delete_all
  end
end
