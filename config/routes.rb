Rails.application.routes.draw do
  get 'transactions/index'
  get 'transactions/new'
  get 'transactions/create'
  get 'transactions/show'
  get 'transactions/update'
  get 'transactions/destroy'
  get 'transactions/edit'
  # get 'business/index'
  # get 'business/new'
  # get 'business/create'
  # get 'business/show'
  # get 'business/update'
  # get 'business/destroy'
  # get 'business/edit'
  # get 'personal/index'
  # get 'personal/new'
  # get 'personal/create'
  # get 'personal/show'
  # get 'personal/update'
  # get 'personal/destroy'
  # get 'personal/edit'
  # get 'wallet/index'
  # get 'wallet/new'
  # get 'wallet/create'
  # get 'wallet/show'
  # get 'wallet/update'
  # get 'wallet/destroy'
  # get 'wallet/edit'

  devise_for :users

  root to: 'pages#home'

  resources :personals

  resources :businesses

  resources :wallets

  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'
  get "help", to: "pages#help", as: 'help'
  get 'contact', to: 'pages#contact', as: 'contact'
  get 'about', to: 'pages#about', as: 'about'
  get 'qrmade', to: 'pages#qrmade', as: 'qrmade'
  get 'postregistration', to: 'pages#postregistration', as: 'postregistration'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
