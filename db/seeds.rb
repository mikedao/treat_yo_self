# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
class Seed

  def initialize
    generate_items
  end

  def generate_items
    Item.create(name: "Light Bright", price: 10)
    Item.create(name: "Blocks", price: 20)
    Item.create(name: "Polly Pocket", price: 15)
    Item.create(name: "Lincoln Logs", price: 5)
    Item.create(name: "Hot Wheels", price: 5)
  end
end

Seed.new
