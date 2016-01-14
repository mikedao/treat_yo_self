class Item < ActiveRecord::Base
  before_create :make_cool,
                :make_deserved

  def make_cool
    self.cool = true
  end

  def make_deserved
    self.do_i_deserve_this = true
  end
end
