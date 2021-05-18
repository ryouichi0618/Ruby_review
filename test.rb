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