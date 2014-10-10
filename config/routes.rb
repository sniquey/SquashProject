# == Route Map
#
#              Prefix Verb   URI Pattern                           Controller#Action
#                root GET    /                                     pages#home
#               error GET    /error(.:format)                      pages#error
#             players POST   /players(.:format)                    players#verify
#         edit_player GET    /players/edit/:id(.:format)           players#edit
#             results GET    /results(.:format)                    matrixdata#results
#                     POST   /whatif_results/:id(.:format)         players#whatif
#      findallplayers GET    /findallplayers(.:format)             matrixdata#findallplayers
#                     GET    /players/_match_history/:id(.:format) players#match_history
#                     POST   /players/:id(.:format)                players#whatif
#     matches_showall GET    /matches/showall(.:format)            matches#showall
#     password_resets POST   /password_resets(.:format)            password_resets#create
#  new_password_reset GET    /password_resets/new(.:format)        password_resets#new
# edit_password_reset GET    /password_resets/:id/edit(.:format)   password_resets#edit
#      password_reset PATCH  /password_resets/:id(.:format)        password_resets#update
#                     PUT    /password_resets/:id(.:format)        password_resets#update
#                     GET    /players(.:format)                    players#index
#                     POST   /players(.:format)                    players#create
#          new_player GET    /players/new(.:format)                players#new
#              player GET    /players/:id(.:format)                players#show
#                     PATCH  /players/:id(.:format)                players#update
#                     PUT    /players/:id(.:format)                players#update
#                     DELETE /players/:id(.:format)                players#destroy
#               login GET    /login(.:format)                      session#new
#                     POST   /login(.:format)                      session#create
#                     DELETE /login(.:format)                      session#destroy
#        competitions GET    /competitions(.:format)               competitions#index
#                     POST   /competitions(.:format)               competitions#create
#     new_competition GET    /competitions/new(.:format)           competitions#new
#    edit_competition GET    /competitions/:id/edit(.:format)      competitions#edit
#         competition GET    /competitions/:id(.:format)           competitions#show
#                     PATCH  /competitions/:id(.:format)           competitions#update
#                     PUT    /competitions/:id(.:format)           competitions#update
#                     DELETE /competitions/:id(.:format)           competitions#destroy
#           divisions GET    /divisions(.:format)                  divisions#index
#                     POST   /divisions(.:format)                  divisions#create
#        new_division GET    /divisions/new(.:format)              divisions#new
#       edit_division GET    /divisions/:id/edit(.:format)         divisions#edit
#            division GET    /divisions/:id(.:format)              divisions#show
#                     PATCH  /divisions/:id(.:format)              divisions#update
#                     PUT    /divisions/:id(.:format)              divisions#update
#                     DELETE /divisions/:id(.:format)              divisions#destroy
#             matches GET    /matches(.:format)                    matches#index
#                     POST   /matches(.:format)                    matches#create
#           new_match GET    /matches/new(.:format)                matches#new
#          edit_match GET    /matches/:id/edit(.:format)           matches#edit
#               match GET    /matches/:id(.:format)                matches#show
#                     PATCH  /matches/:id(.:format)                matches#update
#                     PUT    /matches/:id(.:format)                matches#update
#                     DELETE /matches/:id(.:format)                matches#destroy
#               teams GET    /teams(.:format)                      teams#index
#                     POST   /teams(.:format)                      teams#create
#            new_team GET    /teams/new(.:format)                  teams#new
#           edit_team GET    /teams/:id/edit(.:format)             teams#edit
#                team GET    /teams/:id(.:format)                  teams#show
#                     PATCH  /teams/:id(.:format)                  teams#update
#                     PUT    /teams/:id(.:format)                  teams#update
#                     DELETE /teams/:id(.:format)                  teams#destroy
#               clubs GET    /clubs(.:format)                      clubs#index
#                     POST   /clubs(.:format)                      clubs#create
#            new_club GET    /clubs/new(.:format)                  clubs#new
#           edit_club GET    /clubs/:id/edit(.:format)             clubs#edit
#                club GET    /clubs/:id(.:format)                  clubs#show
#                     PATCH  /clubs/:id(.:format)                  clubs#update
#                     PUT    /clubs/:id(.:format)                  clubs#update
#                     DELETE /clubs/:id(.:format)                  clubs#destroy
#

Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/error' => 'pages#error'

  post '/players' => 'players#verify'

  get '/players/edit/:id' => 'players#edit', :as => :edit_player

  get '/results' => 'matrixdata#results'

  post '/whatif_results/:id' => 'players#whatif'

  get '/findallplayers' => 'matrixdata#findallplayers'

  get '/players/_match_history/:id' => 'players#match_history'

  post '/players/:id' => 'players#whatif'

  get '/matches/showall' => "matches#showall"

  resources :password_resets, only: [:new, :create, :edit, :update]

  resources :players, :except => [:edit]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :competitions

  resources :divisions

  resources :matches

  resources :teams

  resources :clubs

 
end
