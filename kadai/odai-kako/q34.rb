# Q34.次のコードが成り立つようにコードを書き加えてください
# programming_language = ["ruby", "php", "python", "javascript"]
# 
# p programming_language
# p upper_case_programming_language
# 出力結果
# 
# ["Ruby", "Php", "Python", "Javascript"]
# ["RUBY", "PHP", "PYTHON", "JAVASCRIPT"]
#
programming_language = ["ruby", "php", "python", "javascript"]

#p programming_language = programming_language.map{|s| s.capitalize}
#upper_case_programming_language = programming_language .map{|s| s.upcase}

# &とto procメソッドを使った処理 (チェリー本 p389を確認)
p programming_language = programming_language.map(&:capitalize)
upper_case_programming_language = programming_language .map(&:upcase)


p upper_case_programming_language

