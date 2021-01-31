class CashRegister

attr_accessor :cash_register, :discount, :total, :items, :last_item

    def initialize(num = 1, total = 0, items = [])
        @total = total
        @discount = num
        @items = items
    end

   def add_item(title, price, quantity=1)
    @last_item = [price*quantity]
    @items += [title] * quantity 
    @add_item = {title=> price}
        @total = self.total += (price*quantity)
        
   end
   
   def apply_discount
    if self.discount > 1    
        @discounted =  self.total / 100 * self.discount
        @total = @total - @discounted
        "After the discount, the total comes to $#{@total}."
    else 
        "There is no discount to apply."
    end
end

    def void_last_transaction
    @total = self.total - self.last_item.pop
     
    end

end

