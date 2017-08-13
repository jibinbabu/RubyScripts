#!/usr/bin/ruby -w







#puts IO.readlines("playlist.xml").reverse.grep(/demo/)

IO.readlines("test.txt").reverse.grep(/#{ARGV[0]}/).each{|x| puts x + ':' + x.reverse}
