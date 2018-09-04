Rails.application.routes.draw do
  resources :users do
    resources :board_games
  end
  resources :board_games

end
