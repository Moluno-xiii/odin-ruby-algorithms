def stock_picker(array)
  lowest_price = array[0]
  lowest_index = 0
  best_days = []
  profit = 0

  array.each_with_index do |current_price, current_index|
    if current_price < lowest_price
      lowest_price = current_price
      lowest_index = current_index
    end

    if (current_price - lowest_price) > profit
      best_days = [lowest_index, current_index]
      profit = current_price - lowest_price
    end
  end
  { profit: profit, best_days: best_days }
end

stock_array = [17, 3, 6, 9, 15, 8, 6, 1, 10]
p stock_picker(stock_array)
