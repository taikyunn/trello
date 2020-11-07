Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  resources :users, only: :show
  root to: 'tops#index'
  resources :lists do
    member do
      get 'calender'
    end
    resources :cards
  end
end
