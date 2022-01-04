Rails.application.routes.draw do
  root to: "home#index"

  resources :products
  resources :categories
  resources :brands
end
