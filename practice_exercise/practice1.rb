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