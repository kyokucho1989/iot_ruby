# Q23. 以下のハッシュをキー、バリュー含め全て配列に変換してください
# {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}
# 変換後の配列
# 
# [:name, "satou", :age, 33, :address, "saitama", :hobby, "soccer", :email, "hoge@fuga.com"]
#
#
user_data = {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}
user_array = []
user_data.each do |key,value|
  user_array << key
  user_array << value
end
p user_array

# 方法2
p user_data.to_a.flatten
