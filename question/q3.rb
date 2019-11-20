# Q3. 以下の文字列の配列を数字だけの配列に変換してください
# ["1", "2", "3", "4", "5"]
# 期待する配列
# 
# [1, 2, 3, 4, 5]

numbers =  ["1", "2", "3", "4", "5"]
# 方法 1
i_numbers = []
numbers.each do |n|
  i_numbers << n.to_i
end
puts i_numbers.inspect

# 方法2
i_numbers2 = numbers.map{|j| j.to_i} #これだと1行でできる！
puts i_numbers2.inspect
