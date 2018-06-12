Rails.application.routes.draw do
  resources :lists
  devise_for :users
  get 'welcome/home'

  authenticated :user do
    root "lists#index", as: "authenticated_root"
  end

  root 'welcome#home'

end
