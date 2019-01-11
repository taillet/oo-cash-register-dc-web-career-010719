require 'pry'

class CashRegister
  
  attr_accessor :total, :discount
  
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += price*quantity
  end
  
  def apply_discount
    if self.discount != 0
      self.total = 
      (self.total.to_f*(1.0-(self.discount.to_f/100))).to_i
      "After the discount, the total comes to $#{self.total}"
   end
  end

  def void_last_transaction
  end
end
