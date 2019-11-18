# 共同開発問題集 
# Q1. 以下の配列から、期待された結果の配列を作成してください
# [1, 2, 3, 4, 5]
# 期待する配列
# 
# [1, 3, 5, 7, 9]

# 方法 1
numbers = [1,2,3,4,5]
new_numbers = []
numbers.each do |n|
  new_numbers[n-1] = numbers[n-1] * 2 - 1
end
puts "-----"
puts "方法1"
puts new_numbers.inspect

# 方法2
new_numbers2 = []
numbers.each do |n|
  new_numbers2 << 2 * n - 1 
end
puts "-----"
puts "方法2"
puts new_numbers2.inspect

# 方法3
new_numbers3 = numbers.map {|n| 2 * n -1}
puts "-----"
puts "方法3"
puts new_numbers3.inspectr
