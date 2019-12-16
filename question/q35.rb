# Q35 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました
# [["田中", "JavaScript"], 30]
# 上記の配列を以下のようなハッシュに変換してください
# 
# {"user_name" => "田中", "learning_contents" => "JavaScript", "learning_time" => 30}
#
user_data =  {"user_name" => "name", "learning_contents" => "contents", "learning_time" => "leraning_time"}
get_values = [["田中", "JavaScript"], 30]
get_values.flatten!
#-------------
#解き方 1
#user_dataの要素にひとつずつ格納
#-------------
#user_data["user_name"] = data[0]
#user_data["learning_contents"] = data[1]
#user_data["learning_time"] = data[2]


#-------------
# 解き方2
# each with indexを使って格納
# ------------
#user_keys = user_data.keys
#user_keys.each.with_index do |key ,i|
#  user_data[key] = get_values[i]
#end

#p user_data

#--------------
#　解き方3
#　展開した値を values ,　キーをkeysとして配列を作成
#　それらを組み合わせてhashを作成する
#--------------
#
user_keys3 = user_data.keys
user_values3 = get_values.flatten
user_hash = Hash[user_keys3.zip(user_values3)]
p user_hash
