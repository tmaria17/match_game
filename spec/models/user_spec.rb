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

  describe 'roles' do
    it 'can be created as an admin' do
      user = User.create(username: "ad", password:"test123", role: 1)

      expect(user.role).to eq("admin")
      expect(user.admin?).to be_truthy
    end
    it 'can be created as a deafualt user' do
      user = User.create(username: "use", password:"test123", role: 0)

      expect(user.role).to eq("default")
      expect(user.default?).to be_truthy
    end
  end
end
