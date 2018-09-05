describe 'user visits board game index' do
  it 'should display all games' do
    user= User.create(username: "Trevor5", location: "Denver", password: "bat")
    game_1 = BoardGame.create!(title: "Gloomhaven")
    game_2 = BoardGame.create!(title: "Mysterium")
    # user_2 = User.create!(username: "Sean5", location: "Denver", password: "cat")
    game_3 = BoardGame.create(title: "Pandemic")
    # UserBoardGame.create(user: user, board_game:game_1, own_or_play: "own")
    # UserBoardGame.create(user: user, board_game:game_2, own_or_play: "own")
    # UserBoardGame.create(user: user, board_game:game_3, own_or_play: "play")

    visit board_games_path

    expect(page).to have_content(game_1.title)
    expect(page).to have_content(game_2.title)
    expect(page).to have_content(game_3.title)




    save_and_open_page



  end



end
