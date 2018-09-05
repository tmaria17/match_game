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
      save_and_open_page

      expect(page).to have_content('Connect Four')
    end
  end
end
