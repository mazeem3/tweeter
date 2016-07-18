require 'test_helper'

class UserCanSignUpAndFollowTest < Capybara::Rails::TestCase
  setup do
  user = User.create! username: "Test", password: "12345678"
  Tweet.create! body: "Testing", user_id: user.id
  user1 = User.create! username: "Follow", password: "12345678"
  Tweet.create! body: "Testing again", user_id: user1.id

  end

  test "User Can Sign In and See Timeline" do
    visit root_path
    click_link "Sign In"
    fill_in "Username", with: "Test"
    fill_in "Password", with: "12345678"
    click_button "Sign In"
    assert_content page, "My Posts"
  end

  test "User can Follow another User and See Their Posts" do
    visit root_path
    click_link "Sign In"
    fill_in "Username", with: "Test"
    fill_in "Password", with: "12345678"
    click_button "Sign In"
    click_link "All Users"
    click_link'Follow'

    assert_content page, "Followed"
  end

end
