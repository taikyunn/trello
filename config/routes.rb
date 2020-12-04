Rails.application.routes.draw do
  root to: 'tops#index'
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  resources :users, only: :show
  resources :lists do
    member do
      get 'calender'
    end
    resources :cards
  end
end
