# http://rosalind.info/problems/gc/
#
#


def gc(s)
  gcc = [nil, 0]
  d = l = ""
  dna = File.open(s).readlines
  dna.each_index {|t| dna[t] = dna[t].chomp}
  dna.each_index {|i|
    if dna[i][0] == ">"
      l = dna[i]
      l.slice!(0)
      d = ""
    elsif dna[i + 1] == nil or dna[i + 1][0] == ">"
      d << dna[i]
      j = gorc = 0
      d.each_char {|c| 
        j += 1
        gorc += 1 if c == "G" or c == "C"
      }
      if (gorc.to_f / j.to_f) * 100 > gcc[1]
        gcc[0] = l
        gcc[1] = (gorc.to_f / j.to_f) * 100
      end
    else
      d << dna[i]
    end
  }
  File.open("output.txt", "w") {|f|
    f.puts gcc[0]
    f.print gcc[1]
  }
end

  gc("rosalind_gc.txt")
