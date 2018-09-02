class CreateBoardGames < ActiveRecord::Migration[5.2]
  def change
    create_table :board_games do |t|
      t.string :title

      t.timestamps
    end
  end
end
