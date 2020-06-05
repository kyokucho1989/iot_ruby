# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names << "斎藤"
  #puts names.inspect
  p names 

end

def q2
  array1 = ["dog", "cat", "fish"]
  array2 = ["bird", "bat", "tiger"]

  # 以下に回答を記載
  #puts (array1 + array2).inspect
  array = array1 + array2
  p array

end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  p "3の数= #{numbers.count(3)}個"
end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  sports.compact!
  # 以下は変更しないで下さい
  p sports
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  p array1.empty?
  p array2.empty?
end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
  new_numbers = numbers1.map{|n| n * 10}
  p new_numbers
end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  # array.map!{|str| str.to_i}
  # &とシンボルを使って簡単に書く
  array.map!(&:to_i)
  # 以下は変更しないで下さい
  p array
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載
  programming_languages.map(&:capitalize!)
  upper_case_programming_languages = programming_languages.map(&:upcase)

  # 以下は変更しないで下さい
  p programming_languages
  p upper_case_programming_languages
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.each.with_index(1) {|name,num| puts "会員No.#{num} #{name}さん"}
end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  foods.each do |item|
   message = (item.include? "うに")?  "好物です" : "まぁまぁ好きです"
   p message
  end
end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  #f_sports = sports.flatten # flattenで全部展開
  #true_sports = f_sports.uniq
  true_sports = sports.flatten.uniq
  puts "ユーザーの趣味一覧"
  true_sports.each.with_index(1) do |item,i|
    puts "No.#{i} #{item}"
  end
end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  p data[:user][:name]
end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載
  user_data.merge!(update_data)
  p user_data
end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  data_keyonly = data.keys
  p data_keyonly
end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  puts data1.has_key?(:age) ? 'OK' : 'NG'
  puts data2.has_key?(:age) ? 'OK' : 'NG'
end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  users.each do |n| 
    puts "私の名前は#{n[:name]}です。年齢は#{n[:age]}歳です"
  end
end

class UserQ17
  # 以下に回答を記載
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
    @gender = params[:gender]
  end
  def info
    puts <<~text
      名前: #{@name}
      年齢: #{@age}
      性別: #{@gender}
    text
  end
end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男")
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男")

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end
  def introduce
    if @age > 15 
      print "こんにちは、#{@name}と申します宜しくお願いいたします"
    else
      print "はいさいまいど〜、#{@name}です！！！"
    end
  end
end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  attr_reader :name
  def initialize(**params)
    @name = params[:name]
  end
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載
  attr_reader :name,:age
  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end
end

class Zoo
  # 以下に回答を記載
  # attr_reader :name,:entry_fee
  def initialize(**params)
    @zoo_name = params[:name]
    @infant_fee = params[:entry_fee][:infant]
    @children_fee = params[:entry_fee][:children]
    @adult_fee = params[:entry_fee][:adult]
    @senior_fee = params[:entry_fee][:senior]
  end
  def info_entry_fee(user)
    entry_fee = case user.age
    when 0..5 
      @infant_fee
    when 6..12
      @children_fee
    when 13..65
      @adult_fee
    when 66..120
      @senior_fee
    end
    puts "#{user.name}さんの入場料金は　#{entry_fee}円です。"
  end

end


def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end
end


def q21_return_hand(q21_dice_array)
  q21_hand = '??'
  # 戻り値に役を設定

  # 以下に回答を記載
  # q21_sorted_dices = q21_dice_array.sort
  # if q21_sorted_dices == [1,1,1] 
  #   'ピンゾロ'
  # elsif q21_sorted_dices == [1,2,3]
  #   'ヒフミ'
  # elsif q21_sorted_dices.uniq.size == 1
  #   'ゾロ目'
  # else
  #   '目なし'
  # end
end

def q21_disp_hand(q21_dice_array)
  #　ここは変更しないでください
  q21_hand = q21_return_hand(q21_dice_array)
  puts <<~TEXT
  出目：#{q21_dice_array} 　役： #{q21_hand}
  TEXT
end

def q21
  #　ここは変更しないでください
  q21_disp_hand([2,3,1])
  q21_disp_hand([2,1,3])
  q21_disp_hand([1,1,1])
  q21_disp_hand([3,3,3])
  q21_disp_hand([5,3,1])
end


def q22_return_win_or_lose(q22_my_hand,q22_oponent_hand)

  strength_relationship = ['ヒフミ','目なし','ゾロ目','ピンゾロ']

  # 以下に回答を記載
  # my_hand_rank = strength_relationship.index(q22_my_hand)
  # opponent_hand_rank = strength_relationship.index(q22_oponent_hand)
  # if my_hand_rank < opponent_hand_rank
  #   '負け...'
  # elsif my_hand_rank == opponent_hand_rank
  #   '引き分け'
  # else
  #   '勝ち！'
  # end

  # 回答ここまで
end

def q22_judge_hand(q22_my_dices, q22_opponent_dices)
  # 以下は変更しなくてよい
  q22_my_hand = q21_return_hand(q22_my_dices)
  q22_oponent_hand = q21_return_hand(q22_opponent_dices)
  q22_win_or_lose = q22_return_win_or_lose(q22_my_hand, q22_oponent_hand)

  puts <<~TEXT
  自分 出目：#{q22_my_dices} （#{q22_my_hand}） /相手 出目：#{q22_opponent_dices} （#{q22_oponent_hand}）
  #{q22_win_or_lose}
  TEXT

end

def q22
  #　ここは変更しないでください
  q22_judge_hand([2,3,1],[1,1,1])
  q22_judge_hand([5,5,5],[2,2,2])
  q22_judge_hand([2,2,2],[6,3,2])
end


def q23_judge_hand(q23_my_dices,q23_opponent_dices)
  q23_my_hand = q21_return_hand(q23_my_dices)
  q23_oponent_hand = q21_return_hand(q23_opponent_dices)
  q23_win_or_lose = q22_return_win_or_lose(q23_my_hand, q23_oponent_hand)
  q23_gain_point = 99999
  
  q23_point_map = [
    [0,-100,-600,-1500],
    [100,0,-200,-600],
    [600,100,0,-500],
    [1500,600,500,0]
  ]

  # 以下に回答を記載
  # strength_relationship = ['ヒフミ','目なし','ゾロ目','ピンゾロ']
  # my_hand_rank = strength_relationship.index(q23_my_hand)
  # opponent_hand_rank = strength_relationship.index(q23_oponent_hand)
  # q23_gain_point =  q23_point_map[my_hand_rank][opponent_hand_rank]
  # 回答ここまで
  puts <<~TEXT
  自分 出目：#{q23_my_dices} （#{q23_my_hand}） /相手 出目：#{q23_opponent_dices} （#{q23_oponent_hand}）
  #{q23_win_or_lose}
  獲得ポイント: #{q23_gain_point}
  TEXT

end

def q23
  #　ここは変更しないでください
  q23_judge_hand([2,5,1],[1,1,1])
  q23_judge_hand([6,6,6],[3,3,3])
  q23_judge_hand([1,1,1],[1,3,2])
end