# Q11 以下の配列から重複する部分だけを抽出した新しい配列を作成してください
# favorite_sport = ["フットサル", "バスケット"]
# selected_sport = ["野球", "ボルダリング", "サッカー", "フットサル"]
#

favorite_sport = ["フットサル", "バスケット",]
selected_sport = ["野球", "ボルダリング", "サッカー", "フットサル"]
common_items =[]
common_items2 =[]


favorite_sport.each do |sports|
  if selected_sport.include?(sports)
    common_items << sports
  end
end
puts common_items.inspect

# 方法2 ifを省略する 20191205

favorite_sport.each do |sports|
  common_items2 << sports if selected_sport.include?(sports)
end
puts common_items2.inspect


# &を使う
puts (favorite_sport & selected_sport).inspect
