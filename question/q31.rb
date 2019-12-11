# Q31. 以下のようなコードを書くとエラーが出たので期待する出力結果となるように修正してください
# class Item
#   def initialize(name)
#     @name = name
#   end
# end
# 
# book = Item.new("ゼロ秒思考")
# 
# puts book.name
# 期待する出力結果
# 
# ゼロ秒思考
class Item
   def initialize(name)
     @name = name
   end
   #インスタンス変数は外部から参照できない。参照用のメソッドを作成する必要がある
   def name
     @name
   end
 end
 
 book = Item.new("ゼロ秒思考")
 puts book.name

