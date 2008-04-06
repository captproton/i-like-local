class PropertyListing < ActiveRecord::Base
    has_many :real_estates, :dependent => :destroy
    has_many :property_forms
    
    acts_as_state_machine :initial => :pf10 
    
    state :pf10, :after => :current_form      ##  ENTER CONTACT AND LOCATION INFO
    state :pf20, :after => :current_form      ##  ENTER REAL ESTATE DESCRIPTION
    state :pf30, :after => :current_form      ##  ENTER FEATURES AND LINKS
    state :pf40, :after => :current_form      ##  ADD PHOTOS
    state :pf50, :after => :current_form      ##  REVIEW DETAILS
    state :pf60, :after => :current_form      ##  DISPLAY AND DISTRIBUTION
    state :edit10, :after => :current_form    ##  EDIT CONTACT AND LOCATION INFO
    state :edit20, :after => :current_form    ##  EDIT REAL ESTATE DESCRIPTION
    state :edit30, :after => :current_form    ##  EDIT FEATURES AND LINKS
    state :edit40, :after => :current_form    ##  EDIT PHOTOS
    
    event :next do 
        transitions :to => :pf20, :from => :pf10 
        transitions :to => :pf30, :from => :pf20 
        transitions :to => :pf40, :from => :pf30 
        transitions :to => :pf50, :from => :pf40 
        transitions :to => :pf60, :from => :pf50 

        ## leave edit pages for the review after saving to db
        transitions :to => :pf50, :from => :edit10
        transitions :to => :pf50, :from => :edit20
        transitions :to => :pf50, :from => :edit30
        transitions :to => :pf50, :from => :edit40
        
    end 
    
    event :previous do 
        transitions :to => :pf10, :from => :pf20 
        transitions :to => :pf20, :from => :pf30 
        transitions :to => :pf30, :from => :pf40 
        transitions :to => :pf40, :from => :pf50 
        transitions :to => :pf50, :from => :pf60 
        
        ## leave edit pages for the review after saving to db
        transitions :to => :pf50, :from => :edit10
        transitions :to => :pf50, :from => :edit20
        transitions :to => :pf50, :from => :edit30
        transitions :to => :pf50, :from => :edit40
    end 
    
    
    ## Edit pages from the review pages ##
    
    event :edit_10 do
        ## from the review page to make more edits
        transitions :to => :edit10, :from => :pf50
    end
    
    event :edit_20 do    
        ## from the review page to make more edits
        transitions :to => :edit20, :from => :pf50
    end
    
    event :edit_30 do    
        ## from the review page to make more edits
        transitions :to => :edit30, :from => :pf50
    end
    
    event :edit_40 do    
        ## from the review page to make more edits
        transitions :to => :edit40, :from => :pf50
    end
    
    
    def current_form 
        @current_form ||= find_property_form(self.current_state) 
    end
        def find_property_form(state) 
        PropertyForm.find_by_tag(state.to_s) 
    end 
    
end
