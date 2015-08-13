# http://rosalind.info/problems/fib/
#
#


def fib(n, k)
  a = 1
  b = 1
  3.upto(n) {|i|
    c = k * a + b
    a = b
    b = c
  }
  return b
end

  puts "Answer:#{fib(29, 3)}"   # Answer: 8878212019
