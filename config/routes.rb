Rails.application.routes.draw do
  resources :user_coins
  devise_for :users
  # Defines the root path route ("/")
  root "welcome#index"
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_coin', to: 'coins#search'
end
