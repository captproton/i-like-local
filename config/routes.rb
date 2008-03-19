ActionController::Routing::Routes.draw do |map|
    map.resources :habitat_types

    map.resources :start_me_up

  map.resources :advertisers


    map.resources :states do |states|
      states.resources :cities, :name_prefix => "state_"
    end

    map.resources :cities do |cities|
      cities.resources :habitats, :name_prefix => "city_"
    end
    
    map.resources :habitats do |habitats|
        habitats.resources :franchises,         :name_prefix => "habitat_"
        habitats.resources :open_homes,         :name_prefix => "habitat_"
        habitats.resources :offices,            :name_prefix => "habitat_"
        habitats.resources :brokers,            :name_prefix => "habitat_"
        habitats.resources :agents,             :name_prefix => "habitat_"
        habitats.resources :sites,              :name_prefix => "habitat_"
        habitats.resources :landing_pages,      :name_prefix => "habitat_"
        
    end


        
    

  map.resource :session
  map.resources :users do |user|
    # UserAssetsController knows how to deal with the 
    # polymorphic relationship between an Asset and its
    # 'attachable'.  
    # We use the resource_fu :opaque_name option so that the
    # url looks clean independent of url helper and route names.
    user.resources :user_assets, :opaque_name => :assets
        
   
  end
      
      
  map.connect ':controller/service.wsdl', :action => 'wsdl'
  map.connect '', :controller => 'users'

  # Install the default route as the lowest priority.
  
  ## for security, the next two are commented out
  ## map.connect ':controller/:action/:id.:format'
  ## map.connect ':controller/:action/:id'
end
