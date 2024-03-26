# find largest stock_value (element) and its day (index) then find smallest stock_value and its day
# note, you have to buy before you sell (smaller number should come before higher number)
# return highest numerical value
# return index (day) of best time to buy (smallest stock_value), and best time to sell (largest stock_value)
# best time to buy has to come before best time to buy, else [run it a different way]

require 'pry-byebug'
stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stock_prices)
  buy_stock_price = stock_prices.min
  puts "Buy price is: #{buy_stock_price}"
  sell_stock_price = stock_prices.max
  puts "Sell price is: #{sell_stock_price}"
  stock_prices.each do |stock|
    max_profit = 0
    stock_prices.each do |substock|
      next if stock >= substock # for example, if 17 is less than 3 (or equal to itself) this iteration is skipped
      next if stock_prices.index(substock) < stock_prices.index(stock)

      # puts "Stock in question is #{stock}. And is being substracted
      # from #{substock} to output (i.e., profit): #{substock - stock}"
      puts "\nProfit #{substock - stock}"
      # attempt at iterating, then returning maximum profit value
      this_profit = substock - stock
      if this_profit > max_profit
        max_profit = this_profit
      else
        max_profit
      end
      puts "This is the max profit: #{max_profit}"

      # find highest substock-stock value
      # return array that has the [stock_prices.index(stock), stock_prices.index(substock)]
    end
  end
end

puts stock_picker(stock_prices)
