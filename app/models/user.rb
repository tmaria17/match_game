class User < ApplicationRecord
has_many :user_board_games
has_many :board_games, through: :user_board_games

validates_presence_of :location, :password
validates :username, presence: true, uniqueness: true

has_secure_password

enum role: ["default","admin"]

end
