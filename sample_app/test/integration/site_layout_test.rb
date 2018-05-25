require 'test_helper'
#リスト 5.32: レイアウトのリンクに対するテスト
#特定のリンクが存在するかどうかを、aタグとhref属性をオプションで指定して調べています。
class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
   get root_path
   assert_template 'static_pages/home'
   assert_select "a[href=?]", root_path, count: 3
   assert_select "a[href=?]", help_path
   assert_select "a[href=?]", about_path
   assert_select "a[href=?]", contact_path
 end
end
