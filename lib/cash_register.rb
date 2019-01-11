require 'pry'

class CashRegister
  
  attr_accessor :total, :discount
  
  @@all = []
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    @@all << self.title
  end
  
  def apply_discount
    if self.discount != 0
      self.total = 
      (self.total.to_f*(1.0-(self.discount.to_f/100))).to_i
      "After the discount, the total comes to $#{self.total}."
    else 
      "There is no discount to apply."
   end
  end
  
  def items
    @@all
  end

  def void_last_transaction
  end
end
