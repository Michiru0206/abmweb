require 'rails_helper'

RSpec.describe 'Sign in and create diary', type: :system do
    before do
        @diary = FactoryBot.build(:diary)
        @user = FactoryBot.create(:user)
    end

    scenario 'User can acceess diary page' do
        # User sign in
        sign_in @user
        visit tasks_path
        click_on 'Diary'
        expect(current_path).to eq(diaries_path)
    end

    scenario 'User can add new diary' do
        # User sign in
        sign_in @user
        visit tasks_path
        click_on 'Diary'
        visit diaries_path
        click_on 'Write Today\'s Diary', match: :first
        visit new_diary_path
        # Fill in all the info to write a new diary
        fill_in('Title', with: @diary.title)
        fill_in('Content', with: @diary.content)
        # Test - click the button and the number of diary increaes by one
        expect { click_on 'Create Diary' }.to change(Diary, :count).by(1)
    end
end