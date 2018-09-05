require 'rails_helper'

describe 'user visits game show page' do
  it 'should display all people who want to play' do
    user= User.create(username: "Trevor5", location: "Denver", password: "bat")
    game_1 = BoardGame.create!(title: "Gloomhaven")
    game_2 = BoardGame.create!(title: "Mysterium")
    user_kittens = User.create!(username: "Sean70", location: "Denver", password: "cat")
    game_3 = BoardGame.create(title: "Pandemic")
    UserBoardGame.create(user: user, board_game:game_1, own_or_play: "own")
    UserBoardGame.create(user: user, board_game:game_2, own_or_play: "own")
    UserBoardGame.create(user: user, board_game:game_3, own_or_play: "play")
    UserBoardGame.create(user: user_kittens, board_game:game_1, own_or_play: "play")
    visit user_path(user_kittens)


    click_on game_1.title
    save_and_open_page
    expect(current_path).to eq(board_game_path(game_1))
    expect(page).to have_content(user.username)

  end




end
