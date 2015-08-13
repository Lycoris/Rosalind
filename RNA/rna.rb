# http://rosalind.info/problems/rna/
#
#


def rna(t)
  t = File.open(t).read
  u = ""
  t.each_char { |c| 
    if c == "T"
      u << "U"
    else
      u << c
    end
  }
  File.open("output.txt", "w") {|f| f.write(u)}
end


rna("rosalind_rna.txt")
