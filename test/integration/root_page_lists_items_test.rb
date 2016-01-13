require 'test_helper'

class RootPageListsItemsTest < ActionDispatch::IntegrationTest
  test "root page lists items" do
    item = Item.create(name: "Hot Wheels", price: 5)

    visit root_path

    assert page.has_content?("Hot Wheels")
    assert page.has_content?("5")
  end

end
