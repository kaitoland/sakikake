Rails.application.routes.draw do
  resources :is_opens
  resources :reviews
  resources :releases
  resources :projects
  resources :team_projects
  resources :teams
  resources :memos
  resources :messages
  resources :members
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'home#index'
end
