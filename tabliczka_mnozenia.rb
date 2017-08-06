row = (1..10)
column = (1..10)

print '     '
row.each {|i| print "%-3d  " % i}
print "\n     "
row.each {|i| print '---- '}
print "\n"

column.each do |j|
  print "%-3d| " % j
  row.each {|i| print "%-3d  " % (i*j)}
  print "\n"
end
