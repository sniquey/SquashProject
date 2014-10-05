Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/players/edit' => 'players#edit', :as => :edit_player
  resources :players, :except => [:edit]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :competitions

  resources :divisions

  resources :matches

  resources :teams

  resources :outcomes

  resources :players

  resources :clubs

 
end
