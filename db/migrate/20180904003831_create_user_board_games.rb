class CreateUserBoardGames < ActiveRecord::Migration[5.2]
    def change
      create_table :user_board_games do |t|
        t.belongs_to :user, index: true
        t.belongs_to :board_game, index: true

         t.timestamps

      end
    end
  end
