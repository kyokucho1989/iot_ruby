# Q9. 以下の配列を用いて、期待通りの出力結果になるようにコードを書いてください
# ["田中", "佐藤", "佐々木", "高橋"]
# 期待結果
# 
# 会員No.1 田中さん
# 会員No.2 佐藤さん
# 会員No.3 佐々木さん
# 会員No.4 高橋さん
#

#方法 1
members = ["田中", "佐藤", "佐々木", "高橋"]
num = (1..4).to_a
num.each do |n|
  puts "会員No.#{n} #{members[n-1]}さん"
end

#方法2
members.each.with_index(1) do |member,i|
  puts "会員No. #{i} #{member}さん"
end

