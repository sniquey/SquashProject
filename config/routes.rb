Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/matches/showall' => "matches#showall"

  get '/players/history' => "players#history"

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
