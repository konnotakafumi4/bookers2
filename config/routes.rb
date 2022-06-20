Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get '/home/about' => 'homes#about', as: "about"
  resources :users, only: [:edit, :index, :show, :update]
  resources :books, only: [:edit, :index, :show, :create, :destroy, :update]
end
