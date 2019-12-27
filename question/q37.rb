# Q37 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました
# {["田中", "HTML"]=>30, ["斎藤", "JavaScript"]=>50}
# 上記のハッシュを以下のようなハッシュの配列に変換してください
# 
# [{"user_name" => "田中", "learning_contents" => "HTML", "learning_time" => 30}, {"user_name" => "斎藤", "learning_contents" => "JavaScript", "learning_time" => 50}]
#

user_data = {["田中", "HTML"]=>30, ["斎藤", "JavaScript"]=>50}
keys = ["user_name","learning_contents","learning_time"]
new_data = user_data.flatten

new_values = user_data.keys[0]
new_values <<  user_data.values[0]

user_hash = Hash[keys.zip(new_values)]
new_values = user_data.keys[1]
new_values <<  user_data.values[1]

user_hash2 = Hash[keys.zip(new_values)]

p user_hash
p user_hash2
user_array = [user_hash , user_hash2]
p user_array
