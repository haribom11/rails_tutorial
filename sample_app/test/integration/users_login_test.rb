require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  def setup
  @user = users(:michael)
  end
  #上のusersはfixtureのファイル名users.ymlを表し、:michaelというシンボルはリスト 8.22のユーザーを参照するためのキーを表します。

  test "login with invalid information" do
    get login_path
    post login_path, params: { session: { email: "", password: "password" } }
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_path(@user)
  end
end
