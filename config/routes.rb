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
  get 'personalqr/:uuid', to: 'pages#personalqr', as: 'personalqr'
  get 'businessqr/:uuid', to: 'pages#businessqr', as: 'businessqr'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
