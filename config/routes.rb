Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get '/data_analyst', to: 'home#recycle_analyst'
  resources :dashboard
  resources :aircraft_parts
end
