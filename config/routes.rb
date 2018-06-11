Rails.application.routes.draw do
  resources :lists
  root 'welcome#home'
end
