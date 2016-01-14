class Item < ActiveRecord::Base

  def self.top_three
    order(price: :desc).take(3)
  end
end
