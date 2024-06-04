def stock_picker(stocks)
  max_prof = [0, nil, nil]
  min_price_i, curr_price_i = 0, 0
  while curr_price_i < stocks.length
    curr_price, min_price = stocks[curr_price_i], stocks[min_price_i]
    if curr_price < min_price
      min_price_i = curr_price_i
    end
    if curr_price - min_price > max_prof[0]
      max_prof[0] = curr_price - min_price
      max_prof[1] = min_price_i
      max_prof[2] = curr_price_i
    end
    curr_price_i += 1
  end
  max_prof[1..2]
end

p stock_picker([17,3,6,9,15,8,6,1,10])