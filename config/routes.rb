Rails.application.routes.draw do
  resources :subjects
  root 'home#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  

  resources :attendances
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
