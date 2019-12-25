# Q36 2つのデータベースからユーザーネーム・学習項目・合計学習時間の
# データを取得したら以下のようになりました
# {["田中", "JavaScript"]=>30}
# 上記のハッシュを以下のようなハッシュに変換してください
#
# {"user_name" => "田中", "learning_contents" => "JavaScript", "learning_time" => 30}

user_data =  {["田中", "JavaScript"]=>30}
values = user_data.flatten.flatten
keys = ["user_name","learning_contents","learning_time"]

user_hash = Hash[keys.zip(values)]
p user_hash
