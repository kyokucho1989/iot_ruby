# Q16. 以下の配列をもとに期待する出力結果になるようにコードを書いてください
# ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
# 期待結果
# 
# ユーザーの趣味一覧
# No1 サッカー
# No2 バスケ
# No3 野球
# No4 フットサル
# No5 水泳
# No6 ハンドボール
# No7 卓球
# No8 ボルダリング
#

#　プログラムの流れ
#　1:配列中の配列を展開
#　2:配列中の重複した要素を除去
#  3:表示

sports =  ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
f_sports = sports.flatten # flattenで全部展開
true_sports = f_sports.uniq
puts "ユーザーの趣味一覧"
true_sports.each.with_index(1) do |item,i|
  puts "No.#{i} #{item}"
end

