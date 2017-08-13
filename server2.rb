#!/usr/bin/ruby -w
#begin SERVER
require 'socket'

server = TCPServer.new 12345
while (session = server.accept)
	Thread.new {
	while session.gets
	  msg = $_
	  break if msg.match(/^GET/)
	  #puts "Request : #{msg}"
	end
	  info = msg[4..-1]
	  tot = info.length - 12
	  info = info[1..tot]
	  info.squeeze!
	  session.puts "You sent #{info.length.to_s} chars : #{info}"
      	  session.flush
	  puts session.peeraddr
	  session.close
    }
end
#end SERVER
