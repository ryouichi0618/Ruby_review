# 階乗の計算プログラム
puts "mからnまでの階上の計算"
puts "mの値を入力してください"
m = gets.to_i
puts "nの値を入力してください"
n = gets.to_i

def sum(m, n)
  s = 1
  while m <= n
    s = s * n
    n = n - 1
  end
  s
end



p sum(m, n)


#  再起処理で実装

puts "mからnまでの階上の計算"
puts "mの値を入力してください"
m = gets.to_i
puts "nの値を入力してください"
n = gets.to_i

def sum(n, m)
  return m if n == m
  return n * sum(n - 1, m)
end


puts sum(n, m)