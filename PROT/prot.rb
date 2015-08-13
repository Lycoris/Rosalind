# http://rosalind.info/problems/prot/
#
#

f = File.open("rna_codon_table.txt").readlines
f.each_index {|i|
  f[i] = f[i].chomp
  f[i] = f[i].split(" ")
}
TABLE = Hash[*f.flatten]


def prot(s)
  s = File.open(s).read
  e = ""
  (s.size / 3).times {|i|
    if TABLE[s[3 * i] + s[3 * i + 1] + s[3 * i + 2]] != "Stop"
       e << TABLE[s[3 * i] + s[3 * i + 1] + s[3 * i + 2]]
    else
      break
    end
  }
  File.open("output.txt", "w") {|file| file.write(e)}
end


prot("rosalind_prot.txt")
