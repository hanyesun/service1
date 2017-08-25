Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/boss', as: 'rails_admin'
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  root 'boards#index'
  resources :posts
  resources :comments
  resources :boards
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
