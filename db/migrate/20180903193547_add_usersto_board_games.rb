class AddUserstoBoardGames < ActiveRecord::Migration[5.2]
  def change
    add_reference :board_games, :user, foreign_key: true

  end
end
