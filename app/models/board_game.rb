class BoardGame < ApplicationRecord
has_many :user_board_games
has_many :users, through: :user_board_games
validates_presence_of :title

end
