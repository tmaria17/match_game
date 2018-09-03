class User < ApplicationRecord
has_many :user_board_games
has_many :board_games, through: :user_board_games

validates_presence_of :name, :location

end
