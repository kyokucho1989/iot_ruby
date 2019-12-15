# Q32.次の仕様を満たすコードを書いてください
# ○名前、年齢の情報を持った「ユーザークラス」を定義してください
# ○名前、入場料金の情報を持った「動物園クラス」を定義してください
# ○入場料金は、幼児(0~5歳)、子供(6~12歳)、成人(13~64歳)、シニア(65~120歳)
# の4パターン設定してください(金額はお任せします)
#
# ○動物園クラスに、ユーザークラスから生成されたインスタンスを受け取って、
# 受けとったユーザーの年齢に応じて、入場料金を返す「check_entry_feeメソッド」を
# 定義してください(年齢として無効な値が渡った場合は「無効な値です」と返してください)
#
class User
  attr_reader :age, :name 
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end
#  def welcome
#    puts "ようこそ！#{@name}さん！ #{@age}才"
#  end
end
class Zoo
  BABYFEE = 100
  CHILDFEE = 300
  ADULTFEE = 800
  SENIORFEE = 400

  def check_entry_fee(user)
    if user.age < 6
      puts "#{user.name}さんは#{user.age}才なので、料金は#{BABYFEE}円です"
    elsif user.age < 13
      puts "#{user.name}さんは#{user.age}才なので、料金は#{CHILDFEE}円です"
    elsif user.age < 65
      puts "#{user.name}さんは#{user.age}才なので、料金は#{ADULTFEE}円です"
    elsif user.age < 121
      puts "#{user.name}さんは#{user.age}才なので、料金は#{SENIORFEE}円です"
    else
      puts "無効な値です"
    end
  end
end

user1 = User.new(name: "サザエ", age:24)
user2 = User.new(name: "イクラ", age:2)
user3 = User.new(name: "カツオ", age:11)
user4 = User.new(name: "老人", age:80)
user5 = User.new(name: "カメ", age:200)
zoo1 = Zoo.new
zoo1.check_entry_fee(user1)
zoo1.check_entry_fee(user2)
zoo1.check_entry_fee(user3)
zoo1.check_entry_fee(user4)
zoo1.check_entry_fee(user5)




