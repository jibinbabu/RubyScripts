#!/usr/bin/ruby -w
 require 'net/http'
 require 'uri'

data = Net::HTTP.get('fdic.gov', '/bank/individual/failed/banklist.html')


# (1994..2009).each {|yr|

	# fName = "Bank" + yr.to_s + ".txt"
	# File.delete(fName)
	# f = File.new(fName, File::CREAT|File::RDWR)
	# resp, data = h.get('/news/news/press/'+ yr.to_s + '/index.html')
	# lines = data.gsub!(/</,'<<<').split('<<')
	# prs = Array.new
	# lines.each {|x| prs << x if (x =~ /Assumes/ || x =~ /Acquire/ )}
	# prs.each { |x| f.puts(x)}
	# f.puts "Completed year : " + yr.to_s + "  " + prs.length.to_s
	# f.puts "\n\n\n"
	# p "Completed year : " + yr.to_s + "  " + prs.length.to_s
	# }

#begin	
lines = Array.new
#lines = data.gsub!(/</,'<<<').split('<<')
lines = data.split('<tr>')
cntr = 1
prev = 1
results = Array.new
=begin
 following works on an input file which has "Institution" every few lines
 extracts set of lines describing an institutions with 'tags' -- href, closing
=end
#begin
lines.each {|x| 
		cntr += 1
		x1 = x.split('<td>')
		p x.length.to_s + ':' + x1.length.to_s + ':' + x1[0] + '\n' if (x1[0].squeeze! != nil)
		# p prev.to_s + ':' + cntr.to_s if (x =~ /Institution/ && prev > 1)
		#(
		#lines[prev..cntr].each{ |y|  results << y  if (y =~ /href/ || y =~ /Closing/) }	
		#) if (x =~ /Institution/ && prev > 1)		
		#prev = cntr + 1 if x =~ /Institution/ 
		}
#p results
#p results.length
p lines.length
#gets
#end
