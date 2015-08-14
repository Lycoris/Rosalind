# http://rosalind.info/problems/cons/
#
#


def cons(m)
  m = File.open(m).readlines
  m.each_index {|i| m[i] = m[i].chomp}
  d = ""
  pro_a = Array.new(d.size){0}
  pro_c = Array.new(d.size){0}
  pro_g = Array.new(d.size){0}
  pro_t = Array.new(d.size){0}
  array_initialized = false
  m.each_index {|i|
    next if m[i][0] == ">"
    if m[i + 1] == nil or m[i + 1][0] == ">"
      d << m[i]
      if array_initialized == false
        pro_a = Array.new(d.size){0}
        pro_c = Array.new(d.size){0}
        pro_g = Array.new(d.size){0}
        pro_t = Array.new(d.size){0}
        array_initialized = true
      end
      d.each_char.with_index {|c, j|
        case c
        when "A"
          pro_a[j] += 1
        when "C"
          pro_c[j] += 1
        when "G"
          pro_g[j] += 1
        when "T"
          pro_t[j] += 1
        end
      }
      d = ""
    else
      d << m[i]
    end
  }
  consensus = ""
  pro_a.each_index {|i|
    mcs = [[pro_a[i], "A"], [pro_c[i], "C"], [pro_g[i], "G"], [pro_t[i], "T"]]
    consensus << mcs.sort[-1][1]
  }
  File.open("output.txt", "w") {|f|
    f.puts(consensus, "A: " + pro_a.join(" "), "C: " + pro_c.join(" "), "G: " + pro_g.join(" "))
    f.printf("T: " + pro_t.join(" "))
  }
end

  cons("rosalind_cons.txt")
