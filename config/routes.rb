ActionController::Routing::Routes.draw do |map|

  SprocketsApplication.routes(map) 

  map.resource :user_session
  map.root :controller => "welcome"

  map.resource :account, :controller => "users"
  map.resources :users

  map.namespace :admin do |admin|
    admin.resources :cms_pages
    admin.resources :after_life_discussion_group_questions
  end

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
