#!/usr/bin/ruby -w





#  open a browser page and navigate to url http://localhost:1234/go color blue

require 'gserver'

class BasicServer < GServer

  def serve(cso)
    s, mycolor = cso.gets,""
    p s.to_s
    s.each { |x| mycolor = x if x =~ /color/ }
#   skip first GET, strip HTTP/1.1, remove encoding(%20)
    mycolor = mycolor.split("color")[1].split(" ")[0].delete("%20")
    cso.puts("<html><body bgcolor='#{mycolor}'> Hello Jerry!" + Time.now.to_s + '<BR>')
  end

end

server = BasicServer.new(1234, host = '127.0.0.1')
#server.audit = true
server.start(-1)
server.join





#   s = cso.gets
#  IO.readlines('server.rb').each {|x| cso.puts x, '<BR>'}
#    cso.puts("HTTP/1.1 200/OK\r\nContent-type: text/html\r\n\r\n")
#r = s.find{|x| x =~ /GET/ }
#puts mycolor
