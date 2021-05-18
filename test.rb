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