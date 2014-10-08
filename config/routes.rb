Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/results' => 'matrixdata#results'

  get '/findallplayers' => 'matrixdata#findallplayers'

  get '/players/match_history/:id' => 'players#match_history'

  get '/players/whatif/:id' => 'players#whatif'

  get '/players/:id' => 'players#show'

  get '/matches/showall' => "matches#showall"

  get '/players/edit' => 'players#edit', :as => :edit_player
  resources :players, :except => [:edit]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :competitions

  resources :divisions

  resources :matches

  resources :teams

  resources :players

  resources :clubs

 
end
