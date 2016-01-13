require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "an item is cool by default" do
    item = Item.create(name: "Light Bright", price: 30)

    assert item.cool
  end

  test "you deserve this item by default" do
    item = Item.create(name: "Light Bright", price: 30)

    assert item.do_i_deserve_this
  end

end
