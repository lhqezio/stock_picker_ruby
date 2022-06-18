def stock_picker(stock_picker)
    current_pick=[0,0]
    max_profit=0
    stock_picker.each_with_index do |buy_price,buy_day|
        stock_picker.each_with_index do |sell_price,sell_day|
            current_profit=sell_price-buy_price
            if current_profit>max_profit && buy_day<sell_day
                max_profit=current_profit
                current_pick[0]=buy_day
                current_pick[1]=sell_day
            end
        end
    end
    current_pick
end
p stock_picker([17,3,6,9,15,8,6,1,10])