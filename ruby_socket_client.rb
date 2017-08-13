#!/usr/bin/ruby -w





require 'socket'



###########################################################################################
### sbalram / marlabs / socket client demo / 10/06/06
###########################################################################################

teds = []
results = []
#myString = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ\n'

teds.push( 
      Thread.new(){ t = TCPSocket.new('localhost',2755)
    ARGV.each{|x| t.print(x)}
    t.close_write
    s = t.gets
    print s  
          }
          )

teds.each { |aX| aX.join}  
          

