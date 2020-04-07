# Q40.ある居酒屋に、お会計を自動で計算してくれる、 お会計プログラム があります。
# この お会計プログラム は以下のような配列を受け取り、お会計を出力します。
# drinks = [
#             {name: 'ビール', price: 500, count: 13},
#             {name: 'ハイボール', price: 380, count: 20},
#             {name: 'レモンサワー', price: 420, count: 400},
#             {name: '泡盛', price: 650, count: 8},
#             {name: 'テキーラ', price: 400, count: 40}
#           ]
# 
# #出力結果
# 
# ビール(13):6500円
# ハイボール(20):7600円
# レモンサワー(400):168000円
# 泡盛(8):5200円
# テキーラ(40):16000円
# お会計203300円
# しかし、プログラムにバグが発生し、 泡盛の count が 8のはずが、 nil が入ってしまいました。
# 
# drinks = [
#             {name: 'ビール', price: 500, count: 13},
#             {name: 'ハイボール', price: 380, count: 20},
#             {name: 'レモンサワー', price: 420, count: 400},
#             {name: '泡盛', price: 650, count: nil},
#             {name: 'テキーラ', price: 400, count: 40}
#           ]
# 以上をふまえ以下の問題に答えてください。
# 
# お会計プログラム を 作って下さい。
# count: nil はお店側の落ち度なので count: 0 で お会計プログラム内で 処理して下さい。
#
 drinks = [
             {name: 'ビール', price: 500, count: 13},
             {name: 'ハイボール', price: 380, count: 20},
             {name: 'レモンサワー', price: 420, count: 400},
             {name: '泡盛', price: 650, count: 8},
             {name: 'テキーラ', price: 400, count: 40}
           ]
  drinks2 = [
             {name: 'ビール', price: 500, count: 13},
             {name: 'ハイボール', price: 380, count: 20},
             {name: 'レモンサワー', price: 420, count: 400},
             {name: '泡盛', price: 650, count: nil},
             {name: 'テキーラ', price: 400, count: 40}
           ]

def price_calc(items)
  price = 0
  sum_price = 0
  items.each do |item|
    if item[:count].nil?
      price = 0  #初期値を設定しているので不要との指摘 →無料の場合の単価表示がおかしくなるためそのまま残す。
      #sum_price = sum_price + price
      puts "#{item[:name]} (無料!):#{price}円"
    else
      price = item[:price] * item[:count]
      sum_price = sum_price + price
      puts "#{item[:name]} (#{item[:count]}):#{price}円"
    end
  end
  puts "お会計 #{sum_price}円"
end

price_calc(drinks)
price_calc(drinks2)
