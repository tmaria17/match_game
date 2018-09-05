class UserBoardGame < ApplicationRecord
  belongs_to :user
  belongs_to :board_game
  validates_presence_of :own_or_play


end
