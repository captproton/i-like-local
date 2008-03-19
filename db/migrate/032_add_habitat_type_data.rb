class AddHabitatTypeData < ActiveRecord::Migration
  def self.up
      down
      
           mytype = HabitatType.create(:description => 'Single-Family Home') 
      mytype.save
           mytype = HabitatType.create(:description => 'Condo') 
      mytype.save
           mytype = HabitatType.create(:description => 'Townhouse') 
      mytype.save
           mytype = HabitatType.create(:description => 'Coop') 
      mytype.save
           mytype = HabitatType.create(:description => 'Apartment') 
      mytype.save
           mytype = HabitatType.create(:description => 'Loft') 
      mytype.save
           mytype = HabitatType.create(:description => 'TIC') 
      mytype.save
           mytype = HabitatType.create(:description => 'Apt/Condo/Twnhs') 
      mytype.save
           mytype = HabitatType.create(:description => 'Mobile/Manufactured') 
      mytype.save
           mytype = HabitatType.create(:description => 'Farm/Ranch') 
      mytype.save
           mytype = HabitatType.create(:description => 'Lot/Land') 
      mytype.save
           mytype = HabitatType.create(:description => 'Multi-Family Home') 
      mytype.save
           mytype = HabitatType.create(:description => 'Income/Investment') 
      mytype.save
           mytype = HabitatType.create(:description => 'Houseboat') 
      mytype.save
           mytype = HabitatType.create(:description => 'Unspecified') 
      mytype.save
      
  end

  def self.down
      HabitatType.delete_all
  end
end
