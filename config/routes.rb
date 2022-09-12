Rails.application.routes.draw do
  devise_for :users
  # Defines the root path route ("/")
  root "welcome#index"
  get 'my_portfolio', to: 'users#my_portfolio'
end
