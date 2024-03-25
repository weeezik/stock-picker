
# find largest stock_value (element) and its day (index) then find smallest stock_value and its day
  #note, you have to buy before you sell (smaller number should come before higher number)
# return highest numerical value
# return index (day) of best time to buy (smallest stock_value), and best time to sell (largest stock_value)
  #best time to buy has to come before best time to buy, else [run it a different way]

require 'pry-byebug'
stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker (stock_prices)
#correct position confirmation
  #buy_stock_price has to have smaller index than sell_stock_price

#calculation
  #buy_stock_price has to have a smaller value than sell_stock_price

  #could be a few different day-pair candidates, calculate the one with the highest profit!
    #for example [3 and 15] or [1 and 10]
#index (day) return
  stock_prices.each_with_index do |stock_value, index|
    puts "On Day #{index} the stock price is $#{stock_value}."
  end
end

puts stock_picker(stock_prices)

