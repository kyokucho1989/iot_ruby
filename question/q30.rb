# Q30. 以下のようなコードを書いて、期待した出力になるようなUserクラスを定義してください
# user = User.new(name: "あじー", age: 32)
# 
# puts user.introduce
# 
# user2 = User.new(name: "ゆたぼん", age: 10)
# 
# puts user2.introduce
# 期待する出力結果
# 
# こんにちは、あじーと申します宜しくお願いいたします
# はいさいまいど〜、ゆたぼんです！！！
#

class User
  attr_accessor :name ,:age

  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end
  def introduce
    if @name == "あじー" then
      puts "こんにちは、#{@name}と申します宜しくお願いいたします"
    elsif @name == "ゆたぼん" then
      puts"はいさいまいど〜、#{@name}です！！！"
    else
      puts"#{@name}です"
    end
  end

  
end

user = User.new(name: "あじー", age: 32)
puts user.introduce
 
user2 = User.new(name: "ゆたぼん", age: 10)
puts user2.introduce


