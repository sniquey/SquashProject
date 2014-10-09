Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/error' => 'pages#error'

  post '/players' => 'players#verify'

  get '/players/edit/:id' => 'players#edit', :as => :edit_player

  get '/results' => 'matrixdata#results'

  # get '/whatif_results/:id' => 'players#whatif'

  get '/findallplayers' => 'matrixdata#findallplayers'

  get '/players/_match_history/:id' => 'players#match_history'

  get '/players/whatif/:id' => 'players#whatif'

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
