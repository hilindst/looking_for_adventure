Rails.application.routes.draw do
  post '/login', to: "sessions#create"
  resources :characters,  only: [:index, :show, :create, :update, :destroy] 

  resources :adventures,  only: [:index, :show, :create, :update, :destroy] 

  resources :players,  only: [:create, :show] 
  
end
