Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :users
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  namespace :api do
    namespace :v1 do
      resources :mentors, only: [:index]
      resources :reservations, only: [:create, :destroy]
    end
  end
end
