Rails.application.routes.draw do
  root :to => 'pages#home'

   get '/players/edit/:id' => 'players#edit', :as => :edit_player

  get '/results' => 'matrixdata#results'

  # get '/whatif_results/:id' => 'players#whatif'

  get '/findallplayers' => 'matrixdata#findallplayers'

  get '/players/match_history/:id' => 'players#match_history'

  get '/players/whatif/:id' => 'players#whatif'

  get '/matches/showall' => "matches#showall"

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
