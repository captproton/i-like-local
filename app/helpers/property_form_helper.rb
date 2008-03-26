module PropertyFormHelper 
    def property_form_template(property_form) 
        "property_forms/#{property_form.class.name.underscore}" 
    end 
end 
