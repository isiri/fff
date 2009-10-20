ActionController::Routing::Routes.draw do |map|

  SprocketsApplication.routes(map) 

  map.resource :user_session
  map.root :controller => "welcome"

  map.resource :account, :controller => "users"
  map.resources :users

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
