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


        
    

  ### start 2008-05-04 restful_authentication update ##
  map.root :controller => "session", :action => "new"
  
  # begin restful_authentication routes …
  map.login  '/login',  :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.activate '/activate/:id', :controller => 'user_accounts', :action => 'show'
  map.change_password '/change_password',   :controller => 'user_accounts', :action => 'edit'
  map.forgot_password '/forgot_password',   :controller => 'passwords', :action => 'new'
  map.reset_password '/reset_password/:id', :controller => 'passwords', :action => 'edit'


  map.resources :users do |user|
    # UserAssetsController knows how to deal with the 
    # polymorphic relationship between an Asset and its
    # 'attachable'.  
    # We use the resource_fu :opaque_name option so that the
    # url looks clean independent of url helper and route names.
    user.resources :user_assets, :opaque_name => :assets
  end
  
  map.resources :users, :member => { :enable => :put } do |users|
      users.resource :user_account
      users.resources :roles

  end
  
  map.resource :session
  map.resource :password
  # … end restful_authentication routes

  # Install the default routes as the lowest priority.
  ## for security, the next two are commented out
  ## map.connect ':controller/:action/:id'
  ## map.connect ':controller/:action/:id.:format'
  
  ### finish 2008-05-04 restful_authentication update ##
      
  map.connect ':controller/service.wsdl', :action => 'wsdl'
  ## map.connect '', :controller => 'start_me_up'

  # Install the default route as the lowest priority.
  
  ## for security, the next two are commented out
  ## map.connect ':controller/:action/:id.:format'
  ## map.connect ':controller/:action/:id'
end
