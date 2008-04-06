class RealEstate < ActiveRecord::Base
    ### postlet spawn
    belongs_to :property_listing
    belongs_to :property_form
    
    acts_as_taggable
    
end
