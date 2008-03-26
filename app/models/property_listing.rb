class PropertyListing < ActiveRecord::Base
    has_many :habitats, :dependent => :destroy
    has_many :property_forms
    
    acts_as_state_machine :initial => :pf10 
    
    state :pf10, :after => :current_form 
    state :pf20, :after => :current_form 
    state :pf30, :after => :current_form 
    
    event :next do 
        transitions :to => :pf20, :from => :pf10 
        transitions :to => :pf30, :from => :pf20 
    end 
    
    event :previous do 
        transitions :to => :pf10, :from => :pf20 
        transitions :to => :pf20, :from => :pf30 
    end 
    def current_form 
        @current_form ||= find_property_form(self.current_state) 
    end
    
    def find_property_form(state) 
        PropertyForm.find_by_tag(state.to_s) 
    end 
    
end
