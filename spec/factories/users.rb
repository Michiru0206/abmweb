FactoryBot.define do

    factory :user do
        email { 'testuser@example.com' }
        password { 'Test123' }
        password_confirmation { password }
    end
end