Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :users, only: [:show, :destroy]
  post '/users', to: "users#index"
  get '/user/toggle/:id', to: "users#toggle_status"
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  namespace :api do
    namespace :v1 do
      resources :mentors, only: [:index, :create, :destroy]
      resources :reservations, only: [:create, :destroy]
      resources :skills, only: [:create]
    end
  end
end
