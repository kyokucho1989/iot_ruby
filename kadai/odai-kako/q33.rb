# Q33. 次の指定のキー name, age, address, tell が、Hash値のキーとして過不足無く含まれているかを判定するコードを書いてください
# -例
# 
# {name: "あじー", age: 32, address: "札幌", tell: "090-000-000"}
# このhashに対して実行する場合は true が返る
# {name: "あじー", age: 32, address: "札幌"}
# この場合は指定のキー tell が少ないので false が返る
#
user1 = {name: "あじー", age: 32, address: "札幌", tell: "090-000-000"}
user2 = {name: "あじー", age: 32, address: "札幌"}
user3 = {name: "あじー", age: 32, address: "札幌", tell: "090-000-000" ,hoge:100}

#---------------
#解答　1
# step1:キーに重複がないかチェック　→重複してたらNG　（コンパイルエラーになったから判別しなくていいや）
# step2:キーのname,age,adress,tellを１個ずつ抜く →できなければNG
# step3:キーが空であるかチェック　→なんかのこってればNG
#--------------


def check_key_count(**user)
  master = [:name, :age, :address, :tell] 
  array = []
  master.each do |key|
     check = user.delete(key)
     if check.nil?
       array << 0 
     else
       array << 1
     end
    array << 1 if user.has_key?(key)
    p array
  end
  if array.count(1) == 4 && user.empty?
    puts true
  else
    puts false
  end
end

#---------------
#解答　2
# 4つのキーが全て存在し、なおかつhashのサイズが4であればOK
# --------------

def check_key_count2(**params)
 if (params.has_key?(:name && :age && :adress && :tell)  && params.size == 4 )
   p true
 else
   p false
 end
end

#---------------
#解答　3
# 4つのキーの配列を作成。
# ハッシュを読み取り、そのキーの配列を取得
# 取得したキーをソートして、あらかじめ作っておいたキー配列を一致するか確認
# --------------
def check_key_count3(**params)
  expected_keys = [:name, :age, :address, :tell]
  if params.keys.sort! == expected_keys.sort! 
    p true
  else
    p false
  end
end

check_key_count3(user1)
check_key_count3(user2)
check_key_count3(user3)


