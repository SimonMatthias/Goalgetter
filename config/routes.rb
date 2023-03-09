Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/dashboard', to: 'pages#dashboard', as: :dashboard

  resources :fiveyeargoals, only: [:new, :create]
  resources :yearlygoals, only: [:new, :create]
  resources :quarterlygoals, only: [:new, :create]

  get '/inspiration', to: 'pages#inspiration', as: :inspiration
end
