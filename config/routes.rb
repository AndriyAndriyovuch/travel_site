Rails.application.routes.draw do
  resources :articles
  resources :categories
  root 'welcome#index'
end
