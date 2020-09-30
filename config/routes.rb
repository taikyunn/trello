Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  root to: 'tops#index'
  resources :lists do
    resources :card
  end
end
