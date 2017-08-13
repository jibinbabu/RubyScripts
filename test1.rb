#!/usr/bin/ruby -w






#=begin

#begin this runs the thread, but stops it
# and then restarts it again
#end
Thread.abort_on_exception = true
a = Thread.new(ARGV) { |x| Thread.stop; x.each {|y| puts y}}
puts "Demo -- Thread is stopped"
a.run

#begin
#doing threads java/c# style
#initialization inside a thread
#and running a thread method
#end

class Customer
 attr_accessor :first, :last
 def display
  puts @last + "," + @first
  @last
 end
end

class Loopy < Thread
 def initialize(i, j, k)
  @till = i
  puts @till.to_s + '-> Loopy is ready!'
  k.first, k.last = i.to_s, j
  super
 end
end

c = Customer.new
l = Loopy.new(5,"Ding Dong",c) { |x,a,b| puts 'Loopy paused! :42';Thread.stop; puts 'Loopy resumed! : after 45'; c.display}
puts "thread not counting 1"
puts "thread not counting 2"
l.run	
puts '.. that was so thready daddy!', l.value
#=end
