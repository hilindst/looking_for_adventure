Rails.application.routes.draw do
  resources :characters,  only: [:index, :show, :create, :update, :destroy]
  resources :adventures,  only: [:index, :show, :create, :update, :destroy]
  resources :players,  only: [:create, :show]
  post '/login', to: "sessions#create"
 
end
