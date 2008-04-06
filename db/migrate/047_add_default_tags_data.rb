class AddDefaultTagsData < ActiveRecord::Migration
  def self.up
      down
      
 
      Tag.create([ 
        ## Community Features of the real estate      
          {:name => 'Central A/C', :property_feature => true },
          {:name => 'Central heat', :property_feature => true }, 
          {:name => 'Fireplace', :property_feature => true }, 
          {:name => 'High or Vaulted ceiling', :property_feature => true }, 
          {:name => 'Walk-in closet', :property_feature => true }, 
          {:name => 'Hardwood floor', :property_feature => true }, 
          {:name => 'Tile floor', :property_feature => true }, 
          {:name => 'Family room', :property_feature => true }, 
          {:name => 'Living room', :property_feature => true }, 
          {:name => 'Bonus or Rec room', :property_feature => true }, 
          {:name => 'Office or Den', :property_feature => true }, 
          {:name => 'Dining room', :property_feature => true }, 
          {:name => 'Breakfast nook', :property_feature => true }, 
          {:name => 'Dishwasher', :property_feature => true }, 
          {:name => 'Refrigerator', :property_feature => true }, 
          {:name => 'Stove or Oven', :property_feature => true }, 
          {:name => 'Microwave', :property_feature => true }, 
          {:name => 'Granite countertop', :property_feature => true }, 
          {:name => 'Stainless steel appliances', :property_feature => true }, 
          {:name => 'Attic', :property_feature => true }, 
          {:name => 'Basement', :property_feature => true }, 
          {:name => 'Washer', :property_feature => true }, 
          {:name => 'Dryer', :property_feature => true }, 
          {:name => 'Laundry area - inside', :property_feature => true }, 
          {:name => 'Laundry area - garage', :property_feature => true }, 
          {:name => 'Balcony, Deck, or Patio', :property_feature => true }, 
          {:name => 'Yard', :property_feature => true }, 
          {:name => 'Swimming Pool', :property_feature => true }, 
          {:name => 'Jacuzzi or Whirlpool', :property_feature => true }, 
          {:name => 'Sauna', :property_feature => true }, 
          
          ## Community Features of the real estate
          {:name => 'Garage parking', :community_feature => true }, 
          {:name => 'Covered parking', :community_feature => true }, 
          {:name => 'Guest parking', :community_feature => true }, 
          {:name => 'Business center', :community_feature => true }, 
          {:name => 'Clubhouse', :community_feature => true }, 
          {:name => 'Laundry on-site', :community_feature => true }, 
          {:name => 'Storage space(s)', :community_feature => true }, 
          {:name => 'Fitness center', :community_feature => true }, 
          {:name => 'Swimming pool(s)', :community_feature => true }, 
          {:name => 'Sauna/Spa', :community_feature => true }, 
          {:name => 'Tennis court(s)', :community_feature => true }, 
          {:name => 'Golf course', :community_feature => true }, 
          {:name => 'Lake', :community_feature => true }, 
          {:name => 'Playground', :community_feature => true }, 
          {:name => 'Gated property', :community_feature => true }, 
          {:name => 'Secured entry', :community_feature => true }, 
          {:name => 'Elevator', :community_feature => true }, 
          {:name => 'Wheelchair access', :community_feature => true }
          ]) 
      
      
  end

  def self.down
      Tag.delete_all
  end
end
