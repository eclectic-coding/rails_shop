require "test_helper"

class UsersLoginTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    @user = users(:confirmed_user)
  end

  test "logins with valid email/invalid password" do
    get new_user_session_path

    assert_template "sessions/new"
    post new_user_session_path, params: { session: { email: @user.email, password: "invalid" } }
    assert_not is_logged_in?
    assert_template "sessions/new"

  end
end
