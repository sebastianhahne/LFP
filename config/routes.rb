Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :screenings, only: [:create, :show, :new, :index]
  resources :user_steps
end
