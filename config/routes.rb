Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/dashboard', to: 'pages#dashboard', as: :dashboard

  get '/fiveyeargoals', to: 'fiveyeargoals#index', as: :fiveyeargoals
  get '/yearlygoals', to: 'yearlygoals#index', as: :yearlygoals
  get '/quarterlygoals', to: 'quarterlygoals#index', as: :quarterlygoals

  get '/inspiration', to: 'pages#inspiration', as: :inspiration

end
