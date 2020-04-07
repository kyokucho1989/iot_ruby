# Q29.次のようなコードを書いて、目標の出力になるようなUserクラスを定義してください
# (名前情報は各自変えて大丈夫です！) ただし、今回は attr_accessor attr_reader attr_writer は使用しないでください
# 
# user = User.new(name: "あじー")
# 
# puts user.name
# 
# user.name = "tanakin"
# 
# puts user.name
# 出力結果
# 
# あじー
# tanakin
#

class User
  def initialize(**params)
    @name = params[:name]
  end
  def name
    @name
  end

  def name=(value)
    @name = value
  end
end

 user = User.new(name: "あじー")
 
 puts user.name
 
 user.name = "tanakin"
 puts user.name

