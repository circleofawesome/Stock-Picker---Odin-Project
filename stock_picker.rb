arr=[18,17,17,16,15]
sorted=arr.sort
reverse=sorted.reverse
length=sorted.length-1
#element=0
buy=0
sell=0
#buy_sell=[]
pairs=[]
diff=0
differences=[]
sorted.each do |i|
    for m in 0..length do
        if arr.index(i)<arr.index(reverse[m])
            sell=reverse[m]
            buy=i
            diff=sell-buy
            pairs<<[buy,sell,diff]
            break
        end
    end
end

pairs

def valid_pairs(array)
    return array.reject!{|i|i[0]>i[1]}
end

valid_pairs=valid_pairs(pairs)
valid_pairs.each do |i|
    differences<<i[2]
end
differences.sort!

largest_diff=differences[-1]

winning_pair=valid_pairs.select{|i|i[2]==largest_diff}

buy_at=0
sell_at=0

winning_pair.each do |i|
    buy_at=i[0]
    sell_at=i[1]
end

puts buy_at
puts sell_at

#this works, must clean up