class Order
    def initialize
        @order = []
        
        
    end


    #checking order to see if item already exists if it doees we are going to increase the qty
    #if it doesn't we will add items to order with qty
    #This information gets added to @order
    
    def add_item(item, qty)
        for ele in @order do
            order_item = ele.keys[0]
            if order_item.name == item.name
                ele[order_item] += qty
                return 
            end
        end
        @order.push({item => qty})
        
    end
    #This is looking at the information in @order and for each item
    # getting the item cost and multiply it by qty
    #returning the total
    def total_cost
        #loop through @order and add item.price * qty to a total, then return total
       total = 0.00
       for order in @order do
        item = order.keys[0]
        qty = order.values[0]
        total += item.cost * qty
       end
       return total
    
    end

    #This is looking at the information in @order and for each item
    # getting the item price and multiply it by qty
    # returning the total
    def total_price 
        #loop through @order and add item.price * qty to a total, then return total
       total = 0.00
       for order in @order do
        item = order.keys[0]
        qty = order.values[0]
        total += item.price * qty
       end
       return total

    end


    #This also access @order information to print the qty and item requested by the customer
    def to_s
        #print the order with total price
        output = "Your order is: \n"
        #loop @order and add qty and item.name to output
        output = "Your order is: \n"
        for request in @order do
            qty = request.values[0]
            item = request.keys[0]
            output += "#{qty} #{item.name} \n"
        end
        output += "Total price:  $%.2f" % total_price
        return output
        
    end
    
    
    
end

