require 'rails_helper'
describe UserBoardGame, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:own_or_play)}
  end

  describe 'relationships' do
    it { should belong_to(:user)}
    it { should belong_to(:board_game)}
  end
end
