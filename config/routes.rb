Rails.application.routes.draw do
  get 'sessions/create'
  resources :characters,  only: [:index, :show, :create, :update, :destroy]
  resources :adventures,  only: [:index, :show, :create, :update, :destroy]
  resources :players,  only: [:create, :show]
  post '/login', to: "sessions#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
