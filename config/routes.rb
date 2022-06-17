Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'homes/about' => 'homes#about', as: "about"
  resources :users, only: [:edit, :index, :show]
  resources :books, only: [:edit, :index, :show, :create, :destroy]
end
