ActionController::Routing::Routes.draw do |map|
  
  map.vote 'remixes/:id/vote', :controller => 'votes', :action => 'create'
  
  map.status 'remixes/:id/status', :controller => 'remixes', :action => 'status'
  
  map.resources :remixes
  
  map.root :controller => "remixes"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
end
