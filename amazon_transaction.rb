# Code your cash register here!
class AmazonTransaction
  
  attr_accessor :total, :items, :discount
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount.to_f
  end
  
  def add_item(title, price, quantity = 1)
    count = 0 
    while count < quantity
    @items << title
    count += 1
    end
    @total += price*quantity
  end 
  
  def apply_discount
    if @discount > 0
      @total = @total*(1 - (@discount/100))
      return "After the discount, the total comes to $#{@total.to_i}."
    else 
      return "There is no discount to apply."
    end
  end 
  
end

