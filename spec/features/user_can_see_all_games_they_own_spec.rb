require 'rails_helper'

describe 'user visits their game index' do
  it 'should display all games the user owns' do
    user= User.create(name: "Trevor", location: "Denver")
    game_1 = BoardGame.create(title: "Gloomhaven",user_id: user.id)

    visit user_board_games_path(user)
    #binding.pry
    save_and_open_page
    expect(page).to have_content(game_1.title)
  end



end
