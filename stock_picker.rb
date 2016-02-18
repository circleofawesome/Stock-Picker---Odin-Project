def stock_picker(prices=[])
    sorted=prices.sort
    reverse=sorted.reverse
    length=sorted.length-1
    buy=0
    sell=0
    pairs=[]
    diff=0
    differences=[]
    best_days=[]

    sorted.each do |i|
        for m in 0..length do
            if prices.index(i)<prices.index(reverse[m])
                sell=reverse[m]
                buy=i
                diff=sell-buy
                pairs<<[buy,sell,diff]
                break
            end
        end
    end
    
    pairs.reject!{|i|i[2]<0}
    pairs.each do |i|
        differences<<i[2]
        end
    differences.sort!
    best_price_pair=pairs.select{|i|i[2]==differences[-1]}
    return best_days<<prices.index(best_price_pair[0][0])<<prices.index(best_price_pair[0][1])
end

stock_picker([17,3,6,9,15,8,6,1,10])