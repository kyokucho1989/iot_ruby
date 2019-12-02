# Q20. 以下の全てのハッシュの name と age の値を取り出し、「私の名前は〜です年齢は〜歳です」と表示してください
# {name: "satou", age: 22}
# {name: "yamada", age: 12}
# {name: "takahashi", age: 32}
# {name: "nakamura", age: 41}

user_data = [ {name: "satou", age: 22},
              {name: "yamada", age: 12},
              {name: "takahashi", age: 32},
              {name: "nakamura", age: 41}]
user_data.each do |n| 
  puts "私の名前は#{n[:name]}です。年齢は#{n[:age]}歳です"
end
