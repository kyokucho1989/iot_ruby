# Q5. 以下の配列の中に3がいくつあるか数えるコードを書いてください
# [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]
#
array1 = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]
# 方法1
count = 0
array1.each do |n|
  if n == 3
    count = count + 1
  end 
end
puts "3の数= #{count}個"

# 方法2
puts "3の数= #{array1.count(3)}個"
