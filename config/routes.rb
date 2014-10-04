Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :competitions

  resources :divisions

  resources :matches

  resources :teams

  resources :outcomes

  resources :players

  resources :clubs

 
end
