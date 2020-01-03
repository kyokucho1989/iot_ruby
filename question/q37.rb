# Q37 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました
# {["田中", "HTML"]=>30, ["斎藤", "JavaScript"]=>50}
# 上記のハッシュを以下のようなハッシュの配列に変換してください
# 
# [{"user_name" => "田中", "learning_contents" => "HTML", "learning_time" => 30}, {"user_name" => "斎藤", "learning_contents" => "JavaScript", "learning_time" => 50}]
#

user_data = {["田中", "HTML"]=>30, ["斎藤", "JavaScript"]=>50}
keys = ["user_name","learning_contents","learning_time"]
new_data = user_data.flatten

index = (0...user_data.size).to_a
user_hash = index.map do |i|
  new_values = user_data.keys[i]
  new_values <<  user_data.values[i]
  user_hash = Hash[keys.zip(new_values)]
end

p user_hash
