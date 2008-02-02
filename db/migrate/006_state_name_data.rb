class StateNameData < ActiveRecord::Migration
  def self.up
      down 
      
      mystate = State.create(:name => "Alabama", :abbr => "AL")
      mystate.save
      mystate = State.create(:name => "Alaska", :abbr => "AK")
      mystate.save
      mystate = State.create(:name => "Arizona", :abbr => "AZ")
      mystate.save
      mystate = State.create(:name => "Arkansas", :abbr => "AR")
      mystate.save
      mystate = State.create(:name => "California", :abbr => "CA")
      mystate.save
      mystate = State.create(:name => "Colorado", :abbr => "CO")
      mystate.save
      mystate = State.create(:name => "Connecticut", :abbr => "CT")
      mystate.save
      mystate = State.create(:name => "Delaware", :abbr => "DE")
      mystate.save
      mystate = State.create(:name => "District Of Columbia", :abbr => "DC")
      mystate.save
      mystate = State.create(:name => "Florida", :abbr => "FL")
      mystate.save
      mystate = State.create(:name => "Georgia", :abbr => "GA")
      mystate.save
      mystate = State.create(:name => "Hawaii", :abbr => "HI")
      mystate.save
      mystate = State.create(:name => "Idaho", :abbr => "ID")
      mystate.save
      mystate = State.create(:name => "Illinois", :abbr => "IL")
      mystate.save
      mystate = State.create(:name => "Indiana", :abbr => "IN")
      mystate.save
      mystate = State.create(:name => "Iowa", :abbr => "IA")
      mystate.save
      mystate = State.create(:name => "Kansas", :abbr => "KS")
      mystate.save
      mystate = State.create(:name => "Kentucky", :abbr => "KY")
      mystate.save
      mystate = State.create(:name => "Louisiana", :abbr => "LA")
      mystate.save
      mystate = State.create(:name => "Maine", :abbr => "ME")
      mystate.save
      mystate = State.create(:name => "Maryland", :abbr => "MD")
      mystate.save
      mystate = State.create(:name => "Massachusetts", :abbr => "MA")
      mystate.save
      mystate = State.create(:name => "Michigan", :abbr => "MI")
      mystate.save
      mystate = State.create(:name => "Minnesota", :abbr => "MN")
      mystate.save
      mystate = State.create(:name => "Mississippi", :abbr => "MS")
      mystate.save
      mystate = State.create(:name => "Missouri", :abbr => "MO")
      mystate.save
      mystate = State.create(:name => "Montana", :abbr => "MT")
      mystate.save
      mystate = State.create(:name => "Nebraska", :abbr => "NE")
      mystate.save
      mystate = State.create(:name => "Nevada", :abbr => "NV")
      mystate.save
      mystate = State.create(:name => "New Hampshire", :abbr => "NH")
      mystate.save
      mystate = State.create(:name => "New Jersey", :abbr => "NJ")
      mystate.save
      mystate = State.create(:name => "New Mexico", :abbr => "NM")
      mystate.save
      mystate = State.create(:name => "New York", :abbr => "NY")
      mystate.save
      mystate = State.create(:name => "North Carolina", :abbr => "NC")
      mystate.save
      mystate = State.create(:name => "North Dakota", :abbr => "ND")
      mystate.save
      mystate = State.create(:name => "Ohio", :abbr => "OH")
      mystate.save
      mystate = State.create(:name => "Oklahoma", :abbr => "OK")
      mystate.save
      mystate = State.create(:name => "Oregon", :abbr => "OR")
      mystate.save
      mystate = State.create(:name => "Pennsylvania", :abbr => "PA")
      mystate.save
      mystate = State.create(:name => "Rhode Island", :abbr => "RI")
      mystate.save
      mystate = State.create(:name => "South Carolina", :abbr => "SC")
      mystate.save
      mystate = State.create(:name => "South Dakota", :abbr => "SD")
      mystate.save
      mystate = State.create(:name => "Tennessee", :abbr => "TN")
      mystate.save
      mystate = State.create(:name => "Texas", :abbr => "TX")
      mystate.save
      mystate = State.create(:name => "Utah", :abbr => "UT")
      mystate.save
      mystate = State.create(:name => "Vermont", :abbr => "VT")
      mystate.save
      mystate = State.create(:name => "Virginia", :abbr => "VA")
      mystate.save
      mystate = State.create(:name => "Washington", :abbr => "WA")
      mystate.save
      mystate = State.create(:name => "West Virginia", :abbr => "WV")
      mystate.save
      mystate = State.create(:name => "Wisconsin", :abbr => "WI")
      mystate.save
      mystate = State.create(:name => "Wyoming", :abbr => "WY" )

     
      # this is a block 
      
      ## mystate = State.create(:name => "Hoopla", :abbr => "HA")
      ## mystate.save
 
      
  end

  def self.down
      State.delete_all
  end
end
