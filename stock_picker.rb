prices = [20, 8, 18, 30, 1, 6, 2, 12]

def stock_picker(prices)

    max_profit = 0
    buy_day = nil
    sell_day = nil

    prices[..(prices.length - 2)].each_with_index do |today_price, current_index|
        prices[(current_index + 1)..].each do |future_price|
            if (future_price - today_price > max_profit)
                max_profit = future_price - today_price
                buy_day = current_index
                sell_day = prices.index(future_price)
            end
        end
    end

    return buy_day, sell_day, max_profit

end

text = stock_picker(prices)
puts "Buy on day #{text[0]}, sell on day #{text[1]} with profit $#{text[2]}"