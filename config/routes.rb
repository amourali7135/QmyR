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
  get 'qrmade', to: 'pages#qrmade', as: 'qrmade'
  get 'postregistration', to: 'pages#postregistration', as: 'postregistration'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
