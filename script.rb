
# find largest stock_value (element) and its day (index) then find smallest stock_value and its day
  #note, you have to buy before you sell (smaller number should come before higher number)
# return highest numerical value
# return index (day) of best time to buy (smallest stock_value), and best time to sell (largest stock_value)
  #best time to buy has to come before best time to buy, else [run it a different way]

require 'pry-byebug'
stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker (stock_prices)
#if index of buy_stock_price index is less than sell_stock_price
buy_stock_price = stock_prices.min
puts "Buy price is: #{buy_stock_price}"
sell_stock_price = stock_prices.max
puts "Sell price is: #{sell_stock_price}"

puts "Index of buy price is #{stock_prices.index(buy_stock_price)}"
puts "Index of sell price is #{stock_prices.index(sell_stock_price)}"

if stock_prices.index(buy_stock_price) < stock_prices.index(sell_stock_price)
  puts "\nProfit: #{sell_stock_price - buy_stock_price}"
else
  puts "\nnil"
end

#while buy_stock_price has smaller index than_sell_stock_price, run the above

#correct position confirmation
  #buy_stock_price has to have smaller index than sell_stock_price

#calculation
  #buy_stock_price has to have a smaller value than sell_stock_price

  #could be a few different day-pair candidates, calculate the one with the highest profit!
    #for example [3 and 15] or [1 and 10]
#index (day) return

  stock_prices.each_with_index do |stock_value, index|
    while stock_value > prevValue do
      stock_value = prevValue
    end
      puts "New highest stock_price is #{prevValue} with an index of #{index}"

    puts "On Day #{index} the stock price is $#{stock_value}."
  end
end

puts stock_picker(stock_prices)

#methods to use
  #.minmax