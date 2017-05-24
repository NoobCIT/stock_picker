def stock_picker(prices)
  i = 0
  buy =[]
  buy_index = []
  sell = []
  sell_index = []
  profit = []
  days = prices.length
  while i < days - 1
    # Store buy
    buy << prices[i]
    buy_index << i
    # Create an array to subtract
    a = 0
    sub_ary = []
    while a <= i
      sub_ary << prices[a]
      a += 1
    end
    # This is the remaining array with the buy day gone
    rem_ary = prices - sub_ary
    #Take the max of the array without buy day
    sell << rem_ary.max
    sell_index << rem_ary.index(rem_ary.max) + sub_ary.length
    profit << sell[i] - buy[i]
    i += 1
  end
  max_index = profit.index(profit.max)
  puts "The best day to buy is #{buy_index[max_index]}"
  puts "The best day to sell is #{sell_index[max_index]}"
  puts "The profit is #{profit.max}"
end

stock_picker([17,3,6,9,15,8,6,1,10])
