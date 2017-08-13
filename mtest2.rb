#!/usr/bin/ruby -w
#puts IO.readlines("playlist.xml").reverse.grep('/demo/')
IO.readlines("playlist.xml").reverse.grep(/#{ARGV[0]}/).each{|x| puts x.reverse}
