Rails.application.routes.draw do
  resources :characters,  only: [:index, :show, :create, :update, :destroy] do
      post 'upload_image', to: 'characters#upload_image'
    end

  resources :adventures,  only: [:index, :show, :create, :update, :destroy]  do
      post 'upload_image', to: 'adventures#upload_image'
    end

  resources :players,  only: [:create, :show]
  post '/login', to: "sessions#create"
 
end
