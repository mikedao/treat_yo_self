require 'test_helper'

class RootPageListsItemsTest < ActionDispatch::IntegrationTest
  test "root page lists items" do
    item = Item.create(name: "Hot Wheels", price: 5)

    visit root_path

    assert page.has_content?("Hot Wheels")
    assert page.has_content?("5")
  end

  test "root page has a three most expensive section" do
    item_1 = Item.create(name: "Power Wheels", price: 10)
    item_2 = Item.create(name: "Pound Puppies" , price: 9)
    item_3 = Item.create(name: "Thundercats", price: 8)
    item_3 = Item.create(name: "Lincoln Logs", price: 7)

    visit root_path

    within("#top-three") do
      assert page.has_content?("Power Wheels")
      assert page.has_content?("Pound Puppies")
      assert page.has_content?("Thundercats")
      refute page.has_content?("Lincoln Logs")
    end

  end

end
