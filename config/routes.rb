Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  root to: 'tops#index'
  resources :lists do
    member do
      get 'checked', to: 'lists#checked'
    end
    resources :card
    resources :events
  end
end
