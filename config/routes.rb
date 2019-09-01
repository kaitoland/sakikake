Rails.application.routes.draw do
  root to:'home#index'
  devise_for :users, :controllers => {
  :registrations => 'users/registrations',
  :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end
  resources :users
  resources :is_opens
  resources :reviews
  resources :releases
  resources :projects
  resources :team_projects
  resources :teams
  resources :memos
  resources :messages
  resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
