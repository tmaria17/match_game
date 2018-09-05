require 'rails_helper'
describe 'admin visits new game showpage' do
  context 'as an admin' do
    it'shoud allow an admin to create new game' do
      admin = User.create(username: "GracieIsInCharge", location: "Denver", password: "Gracieisacat", role: 0)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit new_board_game_path

      expect(page).to have_content("Make a Game")
    end
  end
end
