# Q35 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました
# [["田中", "JavaScript"], 30]
# 上記の配列を以下のようなハッシュに変換してください
# 
# {"user_name" => "田中", "learning_contents" => "JavaScript", "learning_time" => 30}
#
data_hash =  {"user_name" => "name", "learning_contents" => "contents", "learning_time" => "leraning_time"}
data = [["田中", "JavaScript"], 30]
data.flatten!
data_hash["user_name"] = data[0]
data_hash["learning_contents"] = data[1]
data_hash["learning_time"] = data[2]

p data_hash

