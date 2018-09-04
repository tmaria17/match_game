require 'rails_helper'
describe User, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:location)}
    it {should validate_presence_of(:username)}
    it {should validate_presence_of(:password)}
    it {should validate_uniqueness_of(:username)}


  end

  describe 'relationships' do
    it {should have_many(:board_games).through(:user_board_games)}
  end
end
