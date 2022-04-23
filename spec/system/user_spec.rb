require 'rails_helper'

RSpec.feature 'Log in' do
    background do
        #create a user
        User.create!(email: 'testuser@example.com', password: 'TestUser123')
    end

    scenario 'User is successfully logged in and is redirected to todo page' do
        # top page
        visit new_user_session_path
        # Fill in email and password
        fill_in('Email', with: 'testuser@example.com')
        fill_in('Password', with: 'TestUser123')
        #Click sign in button
        click_on 'Log in'
        # Test
        expect(page).to have_content 'Signed in successfully.'
        expect(current_path).to eq(tasks_path)
    end

    scenario 'User is succeessfully logged out when they click Log Out Button' do
        # todo list page
        visit tasks_path
        # Click log out button
        click_on 'Log Out'
        # Test 
        expect(page).to have_content 'Signed out successfully.'
        expect(current_path).to eq(root_path)
    end
end

