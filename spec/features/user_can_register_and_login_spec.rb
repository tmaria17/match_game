require 'rails_helper'

describe 'registration and login' do
  describe 'registration' do
    it 'allows a visitor to register' do
      username = 'AFunnyUsername'

      visit new_user_path

      #click_on 'Sign up to be a new user'

      expect(current_path).to eq(new_user_path)

      fill_in :user_username, with: username
      fill_in  :user_password, with: 'beesrcool'
      fill_in :user_location, with: 'Denver'
      click_on 'Create User'
      save_and_open_page
      expect(page).to have_content(username)
    end
  end
end
