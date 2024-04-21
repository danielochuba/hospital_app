Rails.application.routes.draw do
  resources :doctor_appointments
  resources :patients

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/home", to: "home#index"

  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end

  root to: "home#index"
end
