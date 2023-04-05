Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  namespace :admin do 
    resources :discounts
    resources :items, only: [:index, :new, :create, :edit, :update] do
      resources :price, only: [:edit, :update]
      resources :tax_rate, only: [:edit, :update]
    end      
    resources :orders, only: [:index]
    resources :users
  end
end
