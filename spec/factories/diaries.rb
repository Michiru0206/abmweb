FactoryBot.define do
    # unit test for diaries
    factory :diary do
        writing_date { '2022-04-23' }
        title {' Test Diary '}
        content { 'This is a test diary.' }

    end
end