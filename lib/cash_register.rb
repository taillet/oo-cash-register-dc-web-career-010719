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
    binding.pry
    if self.discount != 0
   (self.total.to_f*(1.0-(self.discount.to_f/100))).to_f
 end
  end

  def void_last_transaction
  end
end
