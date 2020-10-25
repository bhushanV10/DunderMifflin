Rails.application.routes.draw do

  root to: 'dashboard#index'

  resources :users
  resources :companies

  resources :dashboard, only: [:index] do
    get :filter_data, on: :collection
  end
end
