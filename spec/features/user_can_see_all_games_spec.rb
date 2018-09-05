require 'rails_helper'
describe 'user visits board game index' do
  it 'should display all games' do
    user= User.create(username: "Trevor5", location: "Denver", password: "bat")

    game_1 = BoardGame.create!(title: "Gloomhaven")
    game_2 = BoardGame.create!(title: "Mysterium")
    game_3 = BoardGame.create(title: "Pandemic")

    visit board_games_path

    expect(page).to have_content(game_1.title)
    expect(page).to have_content(game_2.title)
    expect(page).to have_content(game_3.title)
  end
end
