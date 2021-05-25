# callメソッドについて（methodオブジェクト化）
class Foo
  def foo(str)
    "callで呼び出しています引数は#{str}です。"
  end
end

# methodをインスタンス化して「m」に代入
m = Foo.new.method(:foo)

# callメソッドで呼び出し
puts m.call("123")


# 複数呼び出すことのないメソッドはprocを使用
# （procとはブロックをオブジェクト化したもの）
proc_test = Proc.new{|s = "引数が渡されていません。"| puts "#{s} が引数として渡されました。"}

proc_test.call("321")
proc_test.call



# methodオブジェクトの実用例
 class Foo
  # Fooクラスにメソッド作成
  def foo() "foo" end
  def bar() "bar" end
  def baz() "baz" end
 end

#  Fooのインスタンスを作成してobjに代入
 obj = Foo.new

#  ハッシュにメソッドをオブジェクト化して代入
# intergerの時はシンボルが使えないため「=>」を使用（そもそもシンボルはstringを数値として扱っている）
 methods = {
   1 => obj.method(:foo),
   2 => obj.method(:bar),
   3 => obj.method(:baz)
 }

 puts methods[1].call
 puts methods[2].call
 puts methods[3].call

#  レシーバを固定させる(Method オブジェクトはレシーバを保持する)必要がない場合public_sendを使用するのもあり！


methods = {
  1 => :foo,
  2 => :bar,
  3 => :baz
}

puts Foo.new.public_send(methods[1])
puts Foo.new.public_send(methods[2])
puts Foo.new.public_send(methods[3])

