# Q11 以下の配列から重複する部分だけを抽出した新しい配列を作成してください
# favorite_sport = ["フットサル", "バスケット"]
# selected_sport = ["野球", "ボルダリング", "サッカー", "フットサル"]
#

favorite_sport = ["フットサル", "バスケット",]
selected_sport = ["野球", "ボルダリング", "サッカー", "フットサル"]
common_items =[]

favorite_sport.each do |sports|
  if selected_sport.include?(sports)
    common_items << sports
  end
end
puts common_items.inspect
