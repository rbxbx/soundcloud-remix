ActionController::Routing::Routes.draw do |map|
  
  map.vote 'remixes/:id/vote', :controller => 'votes', :action => 'create'
  
  map.status 'remixes/:id/status', :controller => 'remixes', :action => 'status'
  
  map.upload 'upload', :controller => 'remixes', :action => 'new'
  
  map.popular 'remixes/popular', :controller => 'remixes', :action => 'index', :sort => "votes_count DESC"
  
  map.start_upload 'start_upload', :controller => 'remixes', :action => 'start_upload'
  
  map.resources :remixes
  
  map.root :controller => "remixes"
  
end
