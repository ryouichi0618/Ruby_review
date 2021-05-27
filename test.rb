def fibonacci1(n)
  return   if n < 0
  return n if n < 2
  fibonacci1(n - 1) + fibonacci1(n - 2)
end

puts fibonacci1(1)
puts fibonacci1(2)
puts fibonacci1(3)
puts fibonacci1(4)
puts fibonacci1(5)
puts fibonacci1 20
puts fibonacci1 30

a, b = "aです", "bです"

puts a, b

fruits = {"Apple"=>"150円", "Orange"=>"100円", "Melon"=>"600円", "Grape"=>"700円", "Strawberry"=>"600円"}

puts fruits

puts fruits.to_a

p fruits.to_a

puts fruits.size

fruits.delete('Apple')

p fruits

fruits.each do | key_value |
  key = key_value[0]
  value = key_value[1]
  puts "#{key}は#{value}"
end

puts "WEBCAMP".length

puts "WEBCAMP".reverse

puts "WEBCAMPでプログラミング".include?("WEBCAMP")

# puts "キーボードから何か入力してみましょう"
# input_key = gets
# puts "入力された内容は#{input_key}"

dice = 0
puts "6が出るまで繰り返します。"
while  dice != 6
  dice = rand(1..6)
  puts dice
end


# dice = rand(1..6)
# puts "1~6の間でランダムな数を当ててください"
# secret = gets.to_i
# while dice != secret
#   if secret < 1 || secret > 6
#     puts "無効な数字なので再入力をお願いします。"
#   elsif dice == secret
#     break
#   elsif dice < secret
#     print "正解は入力した数より小さい数です。"
#   else
#     print "正解は入力した数より大きい数です。"
#   end
#   puts "再度1~6の間でランダムな数を当ててください"
#   secret = gets.to_i
# end

# print "当たりです。"




for fruit in fruits do
  puts fruit
end

for i in 1..10 do
  print i.to_s + "."
end

fruits.each do |fruit, amount|
  puts "#{fruit}は#{amount}です。"
end




# input_line = gets.chomp

# abc = "1234"
# def decoration(str)
#   puts str.length
#   length = str.length
#   length += 2
#   deco = "+"
#   puts "+" * length
#   puts "+#{str.chomp}+"
#   puts "+" * length
# end

# puts decoration(input_line)



# require 'bigdecimal'
# require 'bigdecimal/util'


# total = gets.to_d
# sold_out = gets.to_d
# last_sell = gets.to_d

# def calculation(total, sold_out, last_sell)
#     sold_out /= 100
#     remaining = total - (total * sold_out)
#     remaining = remaining.round(3)
#     last_sell /= 100
#     remaining_last = remaining - (remaining * last_sell)
#     return remaining_last.to_f
# end


# puts calculation(total, sold_out, last_sell)



# 問題文
# あなたはスーパーマーケットを経営しています。

# 今、ある生鮮食品を m[kg] 仕入れました。とても新鮮だったため、生のまま販売したところ、 m[kg] のうち p[%] を売ることができました。
# 次にその売れ残りをすべてお惣菜にして販売したところ、売れ残った量のうち q[%] が売れました
# さて、m[kg] 仕入れたこの食品は最終的に何kg 売れ残ったでしょうか。
# ただし、生鮮食品をお総菜にする際は、量を変えることなく調理できるものとします。

# ----------------------
# require 'bigdecimal'
# require 'bigdecimal/util'

# total, sold_out, last_sell = gets.to_d, gets.to_d, gets.to_d

# def calculation(total, sold_out, last_sell)
#     sold_out /= 100
#     remaining = total - (total * sold_out)
#     last_sell /= 100
#     remaining_last = remaining - (remaining * last_sell)
#     return remaining_last.to_f
# end
# -------------------------


# Javaでのcase(switch)文
# puts calculation(total, sold_out, last_sell)

# class Main {
#   public static void main(String[] args) {
#     int number = 12;
    
#     // switch文を用いて、numberを3で割った余りで条件分岐をしてください
#     switch(number % 3) {
#       case 0:
#         System.out.println("3で割り切れます");
#         break;
#       case 1:
#         System.out.println("3で割ると1余ります");
#         break;
#       case 2:
#         System.out.println("3で割ると2余ります");
#         break;
#         default:
#         System.out.println("無効な入力です")
#     }
#   }
# }

# Rubyでのcase文
number = 12

case number % 3
when 0 then
  puts "3で割り切れます"
when 1 then
  puts "3で割ると1余ります"
when 2 then
  puts "3で割ると2余ります"
else
  puts "無効な入力です"
end


# Javaのfor文
# class Main {
#   public static void main(String[] args) {
#     for (int i = 1; i <= 10; i++) {
#       System.out.println( i + "回目のループです");
#     }
#   }
# }

# Rubyのfor文
for i in i  10 do
  puts "#{i}回目のループです"
  i += 1
end