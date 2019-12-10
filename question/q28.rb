# Q28.(Q27のつづき)作成した Userクラス からインスタンスを生成、
# infoメソッド を実行し、目標の出力になるようにコードを書き足してください
# ＊ user2 の name age gender に関してはご自分の情報で大丈夫です
# 
# class User
# 
# ~~~~~
# 
# end
# 
# user1 = User.new(name: "神里", age: 32, gender: "男", admin: true)
# user2 = User.new(name: "あじー", age: 32, gender: "男", admin: false)
# 
# user1.info
# puts "-----------"
# user2.info
# 出力結果
# 
# 名前：神里
# 年齢：32
# 性別：男
# 管理者権限：有り
# -----------
# 名前：あじー
# 年齢：32
# 性別：男
# 管理者権限：無し
#
class User
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
    @gender = params[:gender]
    @admin = params[:admin]
  end
  def info
    puts <<~text
    名前：#{@name}
    年齢：#{@age}
    性別：#{@gender}
    管理者権限：#{@admin == true ? "有り":"無し"}
    text
  end
end
user1 = User.new(name: "神里", age: 32, gender: "男", admin: true)
user2 = User.new(name: "あじー", age: 32, gender: "男", admin: false)

#takashi = User.new(name:"takashi",age: 18, gender:"男" ,admin:false)
#takashi.data
 user1.info
 puts "-----------"
 user2.info

