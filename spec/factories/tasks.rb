FactoryBot.define do
    factory :task do
        task { 'Test Task' }
        status {' Working '}
        due {'2022-04-30'}

        association :user
    end
end