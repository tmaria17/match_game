require 'rails_helper'
describe 'admin visits new game showpage' do
  context 'as an admin' do
    xit'shoud allow an admin to create new game' do
      admin = User.create(username: "GracieIsInCharge", location: "Denver", password: "Gracieisacat", role: 1)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit new_board_game_path
      save_and_open_page
      expect(page).to have_content("New Game")
      fill_in :title, with: 'Connect Four'
      click_on 'Create Game'

      expect(current_path).to eq(board_games_path)
      expect(page).to have_content('Connect Four')
    end
  end
end
