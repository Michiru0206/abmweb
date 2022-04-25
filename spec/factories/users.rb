FactoryBot.define do
    # unit test for the devise gem/users
    factory :user do
        email { 'testuser@example.com' }
        password { 'Test123' }
        password_confirmation { password }
    end
end