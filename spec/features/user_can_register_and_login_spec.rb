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
      #save_and_open_page
      expect(page).to have_content(username)
    end
  end
  describe 'login' do
    it 'allows a visitor to login' do
      user= User.create(username: "Aboringusername", location: "Denver", password: "dogsrthebest")
      visit new_user_path
      click_on 'I already have an account'
      expect(current_path).to eq(login_path)

      fill_in :username, with: user.username
      fill_in :password, with: user.password

      click_on 'Log in'
      expect(current_path).to eq(user_path(user))
      expect(page).to have_content("#{user.username}")
    end
  end
end
