Rails.application.routes.draw do
  get  '/dashboard', to: 'dashboard#show'
  get '/auth/github/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  root 'home#show'

  resources :repos, only: [:index]
  resources :followers, only: [:index]
  resources :starred_repos, only: [:index]
end
