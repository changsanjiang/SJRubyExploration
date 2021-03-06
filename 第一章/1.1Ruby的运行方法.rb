
# Ruby 程序有多重执行方法, 其中最常见的方法是使用 ruby 命令来执行, 其次就是使用 irb 命令, 以及交互式命令行方式来执行. 若只想执行小程序, 使用 irb 命令相对简单一点.

# print("Hello, Ruby.\n")

# 对象
# 数据在程序中表现为对象. "Hello, Ruby."成为 String 对象.
# 字符串, 数值, 时间等各种数据, 在 Ruby 中都是对象.
#
# 方法
# print 是一个方法, 所谓方法, 就是对象的行为. 数值的加法或乘法运算, 字符串的合并, 某时刻一小时后或者一天后的计算等操作, 都是通过执行方法来实现的.
# print 方法的作用就是输出 () 中的内容.
#
# 参数
# 我们把执行方法时必需的条件称为参数. 例如, 我们在说明 print 方法时, 会说 " print 方法会把作为参数传递过来的字符串输出到控制台 "


#print('Hello, Ruby.\n 单引号不会转义')
#print("\n")
#print('Hello, \'Ruby\' 但是在嵌入 单引号时, 还是需要转义')
#print("\n")
#
# 方法的调用
# Ruby 在调用方法时, 可以省略 ()
# 如果想连续的输出多个字符串, 可以用逗号分隔.
print "Hello", " Ruby!", "\n"

p "100"
p 100
