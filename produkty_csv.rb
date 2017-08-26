#!/usr/bin/env ruby
require 'csv'
product =[]
price =[]

file = CSV.read('products.csv',:headers => true)
file.each do |line|
  product << line['Product']
  price << line["Price(zł)"]
  end
price_int = price.map(&:to_f)
h = Hash[product.zip price_int]

if ARGV.size == 1 || ARGV.size == 2
 if ARGV[0]=='-f'
   h.map{|k,v| puts "#{k} #{v}" if k==ARGV[1] }
 elsif ARGV[0]=='-gt'
  a = ARGV[1].to_f
  h.map{|k,v| puts "#{k} #{v}" if v >= a}
  elsif ARGV[0]=='-lt'
  a = ARGV[1].to_f
  h.map{|k,v| puts "#{k} #{v}" if v <= a }
  else
  puts "STH WRONG"
  end
else
  eur=[]
  a = ARGV[1].to_f
  z= h.values.each do |e|
     b = e* a
     eur<<b
   end
   File.open("#{ARGV[3]}", "w+") do |f|
     f.puts "#{h.keys}=> #{eur}"
   end
end
