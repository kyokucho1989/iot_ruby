# Q8. mapとは異なるメソッドを使って以下と全く同じ処理を実現させてください
# numbers = ["6", "5", "3", "7", "1"]
# p numbers.map {|item| item.to_i }
# -> [6, 5, 3, 7, 1]
#

# 方法1
numbers = ["6", "5", "3", "7", "1"]
new_numbers1 = [];
numbers.each do |n|
  new_numbers1 << n.to_i
end
puts new_numbers1.inspect

