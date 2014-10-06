Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/players/match_history' => "players#match_history"

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
