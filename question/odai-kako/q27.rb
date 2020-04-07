# Q27. 名前、年齢、性別、管理者権限の情報を持ったユーザークラスを定義して
# インスタンスを作成してください
# 管理者権限の有無はtrueかfalseで表してください
#

class User
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
    @gender = params[:gender]
    @admin = params[:admin]
  end
  def data
    puts <<~text
    名前：#{@name}
    年齢：#{@age}
    性別：#{@gender}
    管理者権限：#{@admin}
    text
  end
end
takashi = User.new(name:"takashi",age: 18, gender:"男" ,admin:false)
takashi.data
