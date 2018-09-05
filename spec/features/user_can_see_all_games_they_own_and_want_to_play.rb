require 'rails_helper'

describe 'user visits their user_page' do
  it 'should display all games the user owns' do
    user= User.create(username: "Trevor5", location: "Denver", password: "bat")
    game_1 = BoardGame.create!(title: "Gloomhaven")
    game_2 = BoardGame.create!(title: "Mysterium")
    user_2 = User.create!(username: "Sean5", location: "Denver", password: "cat")
    game_3 = BoardGame.create(title: "Pandemic")
    UserBoardGame.create(user: user, board_game:game_1, own_or_play: "own")
    UserBoardGame.create(user: user, board_game:game_2, own_or_play: "own")
    UserBoardGame.create(user: user, board_game:game_3, own_or_play: "play")

    visit user_path(user)


    within(".own") do
      expect(page).to have_content(game_1.title)
      expect(page).to have_content(game_2.title)
    end

    within(".play") do
      expect(page).to have_content(game_3.title)
    end
  end
end
