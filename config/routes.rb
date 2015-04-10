Rails.application.routes.draw do

  # resources :desks
  resources :users do
    resources :timelines, only: [:index, :show] do
    resources :posts, only: [:index, :edit, :show, :create, :destroy]
    resources :art_objects, only: [:index, :show]

    end
  end
  resources :timelines, only: [:create, :destroy]
  resources :art_objects, only: [:create, :destroy]

  post '/login', to: 'users#login'
  get '/logout', to: 'users#logout'

end
#                    Prefix Verb   URI Pattern                                                      Controller#Action
#       user_timeline_posts GET    /users/:user_id/timelines/:timeline_id/posts(.:format)           posts#index
#                           POST   /users/:user_id/timelines/:timeline_id/posts(.:format)           posts#create
#   edit_user_timeline_post GET    /users/:user_id/timelines/:timeline_id/posts/:id/edit(.:format)  posts#edit
#        user_timeline_post GET    /users/:user_id/timelines/:timeline_id/posts/:id(.:format)       posts#show
#                           DELETE /users/:user_id/timelines/:timeline_id/posts/:id(.:format)       posts#destroy
# user_timeline_art_objects GET    /users/:user_id/timelines/:timeline_id/art_objects(.:format)     art_objects#index
#                           POST   /users/:user_id/timelines/:timeline_id/art_objects(.:format)     art_objects#create
#  user_timeline_art_object DELETE /users/:user_id/timelines/:timeline_id/art_objects/:id(.:format) art_objects#destroy
#            user_timelines GET    /users/:user_id/timelines(.:format)                              timelines#index
#                           POST   /users/:user_id/timelines(.:format)                              timelines#create
#             user_timeline GET    /users/:user_id/timelines/:id(.:format)                          timelines#show
#                           DELETE /users/:user_id/timelines/:id(.:format)                          timelines#destroy
#                     users GET    /users(.:format)                                                 users#index
#                           POST   /users(.:format)                                                 users#create
#                      user DELETE /users/:id(.:format)                                             users#destroy
#                     login POST   /login(.:format)                                                 users#login
#                    logout GET    /logout(.:format)                                                users#logout
