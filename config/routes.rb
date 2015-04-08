Rails.application.routes.draw do
  resources :users
  resources :desks, shallow: true do
    resources :timelines do
      resources :art_objects, except: [:new, :edit]
      resources :posts
    end
  end

  post '/login', to: 'users#login'
  get '/logout', to: 'users#logout'

end

#               Prefix Verb   URI Pattern                                   Controller#Action
#                users GET    /users(.:format)                              users#index
#                      POST   /users(.:format)                              users#create
#             new_user GET    /users/new(.:format)                          users#new
#            edit_user GET    /users/:id/edit(.:format)                     users#edit
#                 user GET    /users/:id(.:format)                          users#show
#                      PATCH  /users/:id(.:format)                          users#update
#                      PUT    /users/:id(.:format)                          users#update
#                      DELETE /users/:id(.:format)                          users#destroy
# timeline_art_objects GET    /timelines/:timeline_id/art_objects(.:format) art_objects#index
#                      POST   /timelines/:timeline_id/art_objects(.:format) art_objects#create
#           art_object GET    /art_objects/:id(.:format)                    art_objects#show
#                      PATCH  /art_objects/:id(.:format)                    art_objects#update
#                      PUT    /art_objects/:id(.:format)                    art_objects#update
#                      DELETE /art_objects/:id(.:format)                    art_objects#destroy
#       timeline_posts GET    /timelines/:timeline_id/posts(.:format)       posts#index
#                      POST   /timelines/:timeline_id/posts(.:format)       posts#create
#    new_timeline_post GET    /timelines/:timeline_id/posts/new(.:format)   posts#new
#            edit_post GET    /posts/:id/edit(.:format)                     posts#edit
#                 post GET    /posts/:id(.:format)                          posts#show
#                      PATCH  /posts/:id(.:format)                          posts#update
#                      PUT    /posts/:id(.:format)                          posts#update
#                      DELETE /posts/:id(.:format)                          posts#destroy
#       desk_timelines GET    /desks/:desk_id/timelines(.:format)           timelines#index
#                      POST   /desks/:desk_id/timelines(.:format)           timelines#create
#    new_desk_timeline GET    /desks/:desk_id/timelines/new(.:format)       timelines#new
#        edit_timeline GET    /timelines/:id/edit(.:format)                 timelines#edit
#             timeline GET    /timelines/:id(.:format)                      timelines#show
#                      PATCH  /timelines/:id(.:format)                      timelines#update
#                      PUT    /timelines/:id(.:format)                      timelines#update
#                      DELETE /timelines/:id(.:format)                      timelines#destroy
#                desks GET    /desks(.:format)                              desks#index
#                      POST   /desks(.:format)                              desks#create
#             new_desk GET    /desks/new(.:format)                          desks#new
#            edit_desk GET    /desks/:id/edit(.:format)                     desks#edit
#                 desk GET    /desks/:id(.:format)                          desks#show
#                      PATCH  /desks/:id(.:format)                          desks#update
#                      PUT    /desks/:id(.:format)                          desks#update
#                      DELETE /desks/:id(.:format)                          desks#destroy
#                login POST   /login(.:format)                              users#login
#               logout GET    /logout(.:format)                             users#logout
