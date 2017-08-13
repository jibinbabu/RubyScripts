#!/usr/bin/ruby -w








small = 1
big = 5
myRange = (small..big)
myRange.each{ |x| puts x.to_s + ' hello'}

puts myRange.find_all {|x| (x%2 == 0)}

puts 'Sum is :%d' % myRange.inject(0){|sum, x| sum += x}

print "Arguments are: ",ARGV[0]
puts "\n-----Reverse------------"
IO.readlines(ARGV[0]).reverse.each{|x| puts "%d:%s" % [x.length, x]}
