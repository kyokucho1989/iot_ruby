# Q14. 以下の配列からnilの要素を削除してください
# ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]
true_sports = sports.reject{|item| item == nil}
puts true_sports.inspect
