# http://rosalind.info/problems/subs/
#
#


def subs(f)
  f = File.open(f).readlines
  s = f[0].chomp
  t = f[1].chomp
  i = 0
  l = ""
  l << (s.index(t) + 1).to_s
  i = s.index(t) + 1
  while 1 > 0
    break if s.index(t, i) == nil
    l << " " + (s.index(t, i) + 1).to_s
    i = s.index(t, i) + 1
  end
  File.open("output.txt", "w") {|file|
    file.write(l)
  }
end

subs("rosalind_subs.txt")
