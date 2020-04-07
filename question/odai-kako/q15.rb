# Q15. 以下の配列からadminの数を数えてください
# ["admin", "user", "user", "admin", "admin"]
#
array =  ["admin", "user", "user", "admin", "admin"]
# 方法1
admin_count = 0
array.each do |member|
  if member == "admin"
    admin_count  += 1
  end
end
puts "adminの数... #{admin_count}"

# 方法2
puts "adminの数... #{array.count("admin")}" #1行で済む！
 
