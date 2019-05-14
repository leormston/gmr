Rails.application.routes.draw do
  resources :communities
  devise_for :users
  resources :users
  get 'videos/search'
  resources :resources
  get 'home/index'
  root 'home#index'
  get 'home/support'
  post 'home/thank_you'
  get 'users/confirm'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
