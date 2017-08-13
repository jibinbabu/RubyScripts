#!/usr/bin/ruby -w
require 'socket'

###########################################################################################
### sbalram / marlabs / socket server demo / 10/06/06
###########################################################################################

port = 2755
server = TCPServer.new('localhost',port)

while (session = server.accept)

Thread.new(session){ |aSess|
    msgs = session.gets
    #lines = msgs.to_s.split('\n')
    print msgs.to_s, Time.new,"\n"
    session.print "heloooo dummy\n"
    session.close
    }

end
