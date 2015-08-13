# http://rosalind.info/problems/dna/
#
#


def dna(s)
  s = open(s).read
  a = c = g = t = 0
  s.each_char { |d| 
    case d
    when "A"
      a += 1
    when "C"
      c += 1
    when "G"
      g += 1
    when "T"
      t += 1
    end
  }
  return a, c, g, t
end


  puts "Answer: #{dna("rosalind_dna.txt")}"
