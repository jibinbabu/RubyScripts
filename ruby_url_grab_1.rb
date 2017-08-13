#!/usr/bin/ruby -w

require 'net/http'



  
pages = %w( www.google.com )
t = []

for page in pages
 
  t.push(
      Thread.new(page) { |aPage|
                          h = Net::HTTP.new(aPage, 80)
                          resp, data = h.get('/',nil)
                          print "#{aPage} = #{data.length}\n"  
                          print "#{data}"
                          Thread.current["MyData"] = aPage
                          #resp.each {|key, val| printf "%s = %s\n", key, val}
                          p "\n\n"
                        }
        )
 end
 t.each {|aT| 
          aT.join
          print "Page is : ",aT["MyData"],"\n" 
        }
 
