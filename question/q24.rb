# Q24. 以下のハッシュにおいて age というキーが含まれている場合は OK 
# 含まれていない場合#は NG が表示されるようにしてください
# { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
# { name: "yamada", hobby: "baseball", role: "normal" }
#
user_1 =  { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
user_2 =  { name: "yamada", hobby: "baseball", role: "normal" }
users = [user_1,user_2]
# 方法1

users.each do |user|
  if user.has_key?(:age)
    puts "OK"
  else
    puts "NG"
  end
end
puts "----"
# 方法2
users.each do |user|
  message = user.has_key?(:age) ?  "OK" : "NG"
  puts message
end

