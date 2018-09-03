require 'rails_helper'
describe BoardGame, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:title)}
  end

  describe 'relationships' do
    it {should belong_to(:user)}
  end
end
