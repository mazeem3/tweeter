require 'test_helper'

class UserCanSignUpTest < Capybara::Rails::TestCase
  setup do
  end

  test "User Can Sign Up" do
    visit root_path
    click_link "Sign Up"
    fill_in "Username", with: "Test"
    fill_in "Password", with: "12345678"
    fill_in "Password confirmation", with: "12345678"
    click_button "Create User"

    assert_content page, "Welcome, Test"
  end
end
