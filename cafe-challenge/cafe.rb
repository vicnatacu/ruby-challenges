# This challenge has three parts. Use all you have learned to
# implement the solution. Use methods to keep your code DRY and
# clean. Use data structures that are appropriate.
# Make notes for anything you are unsure about.

# Part 1
# You are working at a cafe where you have a current backlog of orders:
# 6 lattes
# 2 scones
# and
# 3 teas

# Write a program that asks the customer for their order. The customer
# will only order one item.
#   if they order a latte, add one to the number of lattes you need to make,
#   if they order a scone, add one to the number of scones you need to serve,
#   if they order a tea, add one to the number of teas you need to make

# Print the final order so you know what to make.


# Part 2
# Lattes sell for $4, and cost $2 to make
# Scones sell for $5, and cost $3 to make
# Tea sells for $3, and cost $0.50 to make

# Print out the total profit for the orders you have.

# Part 3
# Write a program that asks the user for their order.
# Allow the user to input mutiple items and to specify quantities.
# When the order is complete:
#   Print the order
#   Print the total price

# Example:
# What would you like to order (latte, scone, tea)? Type (q)uit to quit.
# latte
# How many?
# 2
# Anything else? Type (q)uit to quit.
# tea
# How many?
# 1
# Anything else? Type (q)uit to quit.
# coffee
# I'm sorry, we don't serve that. Would you like latte, scone, or tea? Type (q)uit to quit.
# q
# Thank you! Your order:
# 2 latte
# 1 tea
# Order total: $11.00

require './classes/item'
require './classes/order'


#Hard coding the items, cost, price
# They were made ($)global variable to allow access
$latte_price = 4.00
$latte_cost =  2.00
$tea_price = 3.00
$tea_cost = 0.50
$scones_price = 5.00
$scones_cost = 3.00

#creating a new instance  class Order
order = Order.new


#when the user input an item it new instance of item, collect item, item cost, 
#price and qty and pass it to add_item in the order class
def add_order(order_item, qty, order)
    if order_item == "latte"
        item = Item.new("latte", $latte_cost, $latte_price)
    elsif order_item == "tea"
        item = Item.new("tea", $tea_cost, $tea_price)
    elsif order_item == "scones"
        item = Item.new("scones", $scones_cost, $scones_price)
    end
    order.add_item(item, qty)
end


def display_menu
    #prints a list of items and their price, from the ($)global variable 
    puts "________________"
    puts "** Menu Items **"
    puts "________________"
    puts "Latte $%.2f" % $latte_price
    puts "Tea $%.2f" % $tea_price
    puts "Scones $%.2f" % $scones_price
    puts "_________________"
    
end


#This will loop and will ask,  'would you like to order' and if response it not finished, 
#it will ask how many
#it will continue to do this until input == finished when it asks 'would you like to order'.
#Adds order to the array @orders
def ask(order)
    input = ""
    loop do
        puts "What would you like to order? Type finished when order is complete."
        input = gets.strip.downcase
       if input == "finished"  
        break 
       end
    
        puts "How many do you want"
        amount = gets.strip.to_i
        
        add_order(input, amount, order) 
        
    end

end


# Because at @order holds the accumlative information: item, cost, price
# And that information is required by cafe, this function is able to
# determind the net_profit
def net_profit(order)
    net_profit = order.total_price - order.total_cost
    return net_profit
end


# Add a Backlog of item
add_order("latte", 4, order)
add_order("tea", 2 , order)
add_order("scones", 6, order)
# print blacklog
puts "Barrister, here are the items already ordered"
puts order

#outputs Greeting
#displays display_menu
#calls ask(order)
#puts the  net profit from the net_profit(order) method
puts "Welcome to Your Time Cafe"
puts display_menu
ask(order)
puts order
puts "Your Time Cafe, your net_profit is: $%.2f" % net_profit(order)
    


    
    
    
    