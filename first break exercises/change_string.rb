def accum(str)
  a=str.split(//)
  a.each {|d| print (d *(a.index(d)+1)).capitalize}
end

accum("RqaEzty")
