Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :except => [:edit]

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
