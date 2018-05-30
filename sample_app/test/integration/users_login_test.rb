require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  def setup
   @user = users(:michael)
  end

  test "login with invalid information" do
    get login_path
    post login_path, params: { session: { email: @user.email,password: 'password' } }
    assert_redirected_to @user #リダイレクト先が正しいかどうかをチェック
    follow_redirect! #ログインパスのリンクがページにないかどうかで判定
    assert_template 'users/show'
    assert_select "a[href=?]", login_path, count: 0 #渡したパターンに一致するリンクが０かどうかを確認
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_path(@user)
    assert_template 'sessions/new'
    #assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
end
