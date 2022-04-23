require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # test "put email and password to create a new user" do
    @user = User.new(email: "testuser@example.com", encrypted_password: "TestUser!")
  #   assert true
  #   #assert @user.invalid?
  # end
end
