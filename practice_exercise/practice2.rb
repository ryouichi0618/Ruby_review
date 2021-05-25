# 階乗の計算プログラム
# puts "mからnまでの階上の計算"
# puts "mの値を入力してください"
# m = gets.to_i
# puts "nの値を入力してください"
# n = gets.to_i

# def sum(m, n)
#   s = 1
#   while m <= n
#     s = s * n
#     n = n - 1
#   end
#   s
# end



# p sum(m, n)


# #  再起処理で実装

# puts "mからnまでの階上の計算"
# puts "mの値を入力してください"
# m = gets.to_i
# puts "nの値を入力してください"
# n = gets.to_i

# def sum(n, m)
#   return m if n == m
#   return n * sum(n - 1, m)
# end


# puts sum(n, m)

# トリボナッチ数列N番目計算プログラム

def tribonacci n
  if n == 1
    return 1
  elsif n == 2
    return 1
  elsif n == 3
    return 2
  else
    return tribonacci(n - 3) + tribonacci(n - 2) + tribonacci(n - 1)
  end
end


def t(n)
  while 1 == n
    tribonacci(n)
    n -= --n
  end
  tribonacci(n)
end


n = gets.to_i
puts "#{n} 番目からの数"
puts (1..n).map{|n| tribonacci n }.reverse
puts "============"

puts "#{n} 番目の数"
puts tribonacci(n)