Rails.application.routes.draw do
  root 'board_games#index'

  resources :users do
    resources :board_games
  end
  resources :board_games
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
get'/logout', to: 'sessions#destroy'
end
