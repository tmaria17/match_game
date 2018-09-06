require 'rails_helper'
describe 'admin visits new game showpage' do
  context 'as an admin' do
    it'shoud allow an admin to create new game' do
      admin = User.create(username: "GracieIsInCharge", location: "Denver", password: "Gracieisacat", role: 1)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit new_user_board_game_path(admin)
      expect(page).to have_content("New Game")
      fill_in "board_game[title]", with: 'Connect Four'
      click_on 'Create Board game'
      expect(current_path).to eq(board_games_path)
      expect(page).to have_content('Connect Four')
    end
  end

  context 'as a default user' do
    it'should allow a user to select a new game' do
    game = BoardGame.create(title: "Zombie Dice")
    user = User.create(username: "Rogue", location: "Mars", password: "UNICORN")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit new_user_board_game_path(user)
    expect(page).to have_content("New Game")
    select 'Zombie Dice', from: "user_board_game[board_game_id]"
    fill_in"user_board_game[own_or_play]", with: 'own'
    click_on "Add Game"
    expect(current_path).to eq(user_path(user))


      within(".own") do
        expect(page).to have_content("Zombie Dice")
      end

    end
 end
end
