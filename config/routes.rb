Rails.application.routes.draw do
  devise_for :users
  root to: 'tops#index'
  resources :lists do
    resources :card
  end
end
