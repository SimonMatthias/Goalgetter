Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations", :sessions => "sessions"}
  root to: "pages#home"

  get '/dashboard', to: 'pages#dashboard', as: :dashboard

  resources :fiveyeargoals, only: [:new, :create]
  resources :yearlygoals, only: [:new, :create] do
    resources :quarterlygoals, only: [:new, :create]
  end
  resources :weeklytodos
  get '/inspiration', to: 'pages#inspiration', as: :inspiration
end
