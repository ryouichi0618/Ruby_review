# 問題：１つのテーブルに配置できる最大の人数が１０人のとき、１００人が１つ以上のテーブルに別れて座る人数のパターンを求めなさい。
# M, N = 10, 100

# def check(remain, pre)
#   # 配置する人がいなくなると終了
#   return 0 if remain < 0
#   return 1 if remain == 0


#   cnt = 0
#   pre.upto(M) do |i|
#     cnt += check(remain -i, i)
#   end
#   cnt
# end

# puts check(N, 2)

# 修正版（処理を高速化）

M, N = 10, 100

@memo = {}
def check(remain, pre)
# 一度計算したものがあれば、それを返す
return @memo[[remain, pre]] if @memo[[remain, pre]]

  # 配置する人がいなくなると終了
  return 0 if remain < 0
  return 1 if remain == 0


  cnt = 0
  pre.upto(M) do |i|
    cnt += check(remain -i, i)
  end
  @memo[[remain, pre]] = cnt
end

puts check(N, 2)

# メソッドの引数にデフォルト値を設定

def hello(name = 'Unknown')
  puts "Hello, #{name}"
  puts "名前の入力がありませんでした。" if name == 'Unknown'
end

hello(name: 'Kojima')

hello

# キーワード引数について

def hello(name: 'Unknown')
  puts "Hello, #{name}"
  puts "名前の入力がありませんでした。" if name == 'Unknown'
end

hello(name: 'Kojima')

hello

# 仮引数について

# ハッシュ形式

# def some_mathod(**)

# トリボナッチ数列（n）行目を求めるプログラム

puts "0, 0, 1, 1, 2, 4, 7, 13, 24, 44, 81, 149, 274, 504, 927, 1705, 3136, 5768,…と続く数列のN番目を入力してください"

num = gets.to_i

a = 0
b = 0
c = 1
n = 3

while n < num
  d = a + b + c
  a = b
  b = c
  c = d

  n += 1
end

puts "#{num}番目の数は#{c}です"







