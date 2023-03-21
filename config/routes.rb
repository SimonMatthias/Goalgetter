Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations", :sessions => "sessions"}
  root to: "pages#home"

  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  get '/inspiration', to: 'pages#inspiration', as: :inspiration
  get '/community', to: 'pages#community', as: :community

  resources :fiveyeargoals, only: [:new, :create, :index, :edit]
  resources :yearlygoals, only: [ :new, :create, :index, :edit] do
    resources :quarterlygoals
  end
  resources :weeklytodos
end
