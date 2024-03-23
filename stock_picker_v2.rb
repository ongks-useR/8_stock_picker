prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
    result = {:max_profit=>0, :buy_day=>nil, :sell_day=>nil}

    prices[..(prices.length - 2)].reduce(result) do |object, today_price|
        prices[(prices.index(today_price) + 1)..].each do |future_price|
            if (future_price - today_price) > object[:max_profit]

                object[:max_profit] = future_price - today_price
                object[:buy_day] = prices.index(today_price)
                object[:sell_day] = prices.index(future_price)

            end
        end

        object
    end  
end

text = stock_picker(prices)
puts "Buy on day #{text[:buy_day]}, sell on day #{text[:sell_day]} and you will enjoy highest profit $#{text[:max_profit]}."