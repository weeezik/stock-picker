
# find largest stock_value (element) and its day (index) then find smallest stock_value and its day
  #note, you have to buy before you sell (smaller number should come before higher number)
# return highest numerical value
# return index (day) of best time to buy (smallest stock_value), and best time to sell (largest stock_value)
  #best time to buy has to come before best time to buy, else [run it a different way]

require 'pry-byebug'
stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker (stock_prices)
buy_stock_price = stock_prices.min
puts "Buy price is: #{buy_stock_price}"
sell_stock_price = stock_prices.max
puts "Sell price is: #{sell_stock_price}"


valid_buy_sell_pairs = while stock_prices.index(buy_stock_price) < stock_prices.index(sell_stock_price) do
  stock_prices.minmax
end

p valid_buy_sell_pairs

end


puts stock_picker(stock_prices)

#methods to use
  #.minmax