require 'rails_helper'

RSpec.describe 'Sign up to use the app', type: :system do
    before do
        @task = FactoryBot.build(:task)
        @user = FactoryBot.create(:user)
    end

    scenario 'User can add new task' do
        # User sign in 
        sign_in @user
        # Go to task page
        visit tasks_path
        # Click the button and redirect to new task page
        click_on 'New Task', match: :first
        visit new_task_path
        # Fill in all the info to create a new task
        fill_in('New task', with: @task.task)
        fill_in('Status', with: @task.status)
        #Test - click the button and the number of task increases by one
        expect { click_on 'Create Task' }.to change(Task, :count).by(1)
    end

    scenario 'User can access add new task page via navigation bar' do
        # User sign in
        sign_in @user
        # Click button on navigation bar
        visit root_path
        click_on 'Add task', match: :first
        expect(current_path).to eq(new_task_path)
    end
end