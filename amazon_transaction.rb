# Code your cash register here!
class AmazonTransaction
  
  attr_accessor :total, :items, :discount
  @@count = 0
  @@order_history = {}
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount.to_f
    @@count += 1
    @@order_history["Order #{@@count}"] = items
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
  
  def self.order_history
    @@order_history
  end
  
end

a = AmazonTransaction.new 
a.add_item("eggs", 78)

b = AmazonTransaction.new 
b.add_item("waffles", 21)


