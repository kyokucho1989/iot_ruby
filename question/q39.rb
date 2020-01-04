# Q39. あなたは中学３年生の子どもから，「根号（ルート）を簡単にする問題が出されたけど，合っているかどうか教えて！」と聞かれました。
#√432 = 12√3 √29 = √29 √225 = 15 のような問題です。 
#そこで，ターミナルから数値を入力すれば解答が出力されるプログラムを作って，その子に使わせることに決めました。 
#・ターミナルから自然数（1以上の整数）を入力すると，次のように出力されるプログラムを作成して下さい。
#簡単にしたいルートの中身を入力して下さい: 432 √432 = 12√3 
#簡単にしたいルートの中身を入力して下さい: 29 √29 = √29 
#※ 1√29 ではダメ
#簡単にしたいルートの中身を入力して下さい: 225 √225 = 15 ※ 15√1 ではダメ 
#【補足】 ・ルートの記号は全角記号「√」を使用して下さい 
#・Primeクラスのprime_divisionメソッドを使用してOKです。
#・例えば，432の素因数分解 432 = 2 * 2 * 2 * 2 * 3 * 3 * 3 = (2 * 2) * (2 * 2) * (3 * 3) * 3 より，√432 = 2 * 2 * 3 √3 = 12√3
#
require 'prime'
puts "簡単にしたいルートの中身を入力してください"
number = gets
prime_array = Prime.prime_division(number.to_i)
root_a = 1
root_b = 1
prime_array.each do |p,e|
  sho,amari = e.divmod(2)
  root_a = root_a * p ** sho
  root_b = root_b * p ** amari
#  p "商：#{sho} 余り #{amari}"
 # p "#{root_a}√ #{root_b} "
end
if root_a == 1 && root_b != 1
  puts "√ #{root_b} "
elsif root_b == 1 #root_a != 1 && root_b == 1 から修正
  puts "#{root_a} "
else
 puts "#{root_a}√ #{root_b} "
end

