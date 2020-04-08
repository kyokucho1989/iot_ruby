# Q21. 以下の配列から全てのキーを取り出してターミナルに出力してください
# {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}
#
#
user_data =  {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}

# 方法1
user_data.each do |key,value|
  puts "key= #{key}"
end

#方法2
p user_data.keys
