Rails.application.routes.draw do
  resources :lists
  resources :users
  resources :tasks
  #devise_for :users
  get 'welcome/home'
  get 'signin', to: 'sessions#create', as: 'signin'
  get 'signup', to: 'users#create', as: 'signup'

  authenticated :user do
    root "lists#index", as: "authenticated_root"
  end

  root 'welcome#home'

end
