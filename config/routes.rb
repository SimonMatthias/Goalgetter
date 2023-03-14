Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations", :sessions => "sessions"}
  root to: "pages#home"

  get '/dashboard', to: 'pages#dashboard', as: :dashboard

  resources :fiveyeargoals, only: [:new, :create, :index]
  resources :yearlygoals, only: [ :new, :create, :index] do
    resources :quarterlygoals
  end
  resources :weeklytodos
  get '/inspiration', to: 'pages#inspiration', as: :inspiration
end
