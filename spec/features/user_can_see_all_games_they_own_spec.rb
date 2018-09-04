require 'rails_helper'

describe 'user visits their game index' do
  it 'should display all games the user owns' do
    user= User.create(name: "Trevor", location: "Denver")
    game_1 = user.board_games.create!(title: "Gloomhaven")
    game_2 = user.board_games.create!(title: "Mysterium")
    user_2 = User.create!(name: "Sean", location: "Denver")
    game_3 = user_2.board_games.create(title: "Pandemic")



    visit user_board_games_path(user)
    save_and_open_page
    expect(page).to have_content(game_1.title)
    expect(page).to have_content(game_2.title)
    expect(page).to_not have_content(game_3.title)


  end



end
