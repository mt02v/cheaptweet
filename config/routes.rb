Rails.application.routes.draw do
  get 'users/show'
  namespace :tweets do
    resources :searches, only: :index
  end
  resources :tweets do
    resources :comments, only: :create
  devise_for :users
    resources :users, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 end
end
