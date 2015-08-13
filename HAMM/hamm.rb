# http://rosalind.info/problems/hamm/
#
#


def dh(g)
  f = File.open(g).readlines
  f.each_index {|i| f[i] = f[i].chomp}
  s = f[0]
  t = f[1]
  d = 0
  (0 ... s.size).each {|i| d += 1 if s[i] != t[i]}
  return d
end

  puts "Answer: #{dh("rosalind_hamm.txt")}"   # Answer: 490
