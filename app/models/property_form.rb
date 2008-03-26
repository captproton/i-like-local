class PropertyForm < ActiveRecord::Base
    belongs_to :property_listing 
    has_many :habitats
    
end
