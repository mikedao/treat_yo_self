require 'test_helper'

class UserCanAddANewItemTest < ActionDispatch::IntegrationTest
  test "a user can add a new item" do
    visit root_path
    click_link "Treat Yo Self"

    assert_equal new_item_path, current_path
    fill_in "Name", with: "Hot Wheels"
    fill_in "Price", with: "5"
    click_button "Create Item"

    assert_equal root_path, current_path
    assert page.has_content?("Hot Wheels")
    assert page.has_content?("5")
  end
end
