# Q25. 配列 keys の各要素を、ハッシュ user がキーとして保持するかどうかを判定するコードを書いてください
# keys = [:age, :name, :hobby, :address]
# user = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
#
keys = [:age, :name, :hobby, :address]
user = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }

keys.each do |key|
  if user.has_key?(key)
    p "#{key}を保持している"
  end
end
