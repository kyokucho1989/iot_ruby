# Q13. 以下の配列から奇数だけを選んだ新しい配列を作成してください
# [1, 2, 3, 4, 5]
#
numbers = [1, 2, 3, 4, 5]
odd_numbers = numbers.select{|n| n.odd?}
puts odd_numbers.inspect
