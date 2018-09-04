require 'rails_helper'

describe 'user visits their game index' do
  describe 'user clicks on a game they want to play' do
    xit 'should display all games the user owns' do
      user= User.create(username: "Trevor1", location: "Denver", password: "password1")
      game_1 = user.board_games.create!(title: "Gloomhaven")
      game_2 = user.board_games.create!(title: "Mysterium")
      user_2 = User.create!(username: "Sean12", location: "Denver", password: "password2")
      game_3 = user_2.board_games.create(title: "Pandemic")



      visit user_board_games_path(user)
      click_on "Gloomhaven"
      save_and_open_page

      expect(current_path).to eq(board_game_path(game_1))
      expect(page).to have_content("People who want to play #{game_1.title}")
      expect(page).to have_content(user_2.username)

    end
  end

end
