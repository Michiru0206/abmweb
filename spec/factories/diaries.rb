FactoryBot.define do

    factory :diary do
        writing_date { '2022-04-23' }
        title {' Test Diary '}
        content { 'This is a test diary.' }

        #association :user
    end
end