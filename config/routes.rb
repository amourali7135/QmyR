Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'

  resources :personals

  resources :businesses

  resources :wallets

  resources :transactions

  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'
  get "help", to: "pages#help", as: 'help'
  get 'contact', to: 'pages#contact', as: 'contact'
  get 'about', to: 'pages#about', as: 'about'
  get 'postregistration', to: 'pages#postregistration', as: 'postregistration'
  get 'personalqr', to: 'pages#personalqr', as: 'personalqr'
  get 'businessqr', to: 'pages#businessqr', as: 'businessqr'
  # get 'business/:id/follow', to: 'business#follow', as: :business_follow
  # get 'business/:id/unfollow', to: 'business#unfollow', as: :business_unfollow
  # get 'personal/:id/follow', to: 'personal#follow', as: :personal_follow
  # get 'personal/:id/unfollow', to: 'personal#unfollow', as: :personal_unfollow

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
