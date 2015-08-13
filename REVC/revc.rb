# http://rosalind.info/problems/revc/
#
#


def revc(s)
  s = File.open(s).read
  sc = ""
  s.each_char { |c| 
    case c
    when "A"
      sc << "T"
    when "T"
      sc << "A"
    when "C"
      sc << "G"
    when "G"
      sc << "C"
    end
  }
  sc = sc.reverse
  File.open("output.txt", "w") {|f| f.write(sc)}
end

  revc("rosalind_revc.txt")
