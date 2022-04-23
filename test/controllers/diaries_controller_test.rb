require "test_helper"

class DiariesControllerTest < ActionDispatch::IntegrationTest
    setup do
        @user = users(:testuser)
        @diary = @user.diaries
    end
    # @user = User.new(email: "testuser@example.com", encrypted_password: "TestUser!")
    # @diary = @user.diaries.new(writing_date: 2022-04-15, title: "Test Diary", content: "This is a test.")
    # @diary.save!

  test "should get index" do
    get diaries_index_url
    assert_response :success
  end
end
