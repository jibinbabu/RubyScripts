#retrived environemntal variables , splits it and prints

mypath=ENV["PATH"]
puts mypath
path=mypath.split(":")
puts path

#processsing files 
#
lines=File.open("test.txt") {|f| f.readlines}

lines.each {|l| puts l}

######manipualting each line seperately
#
x=File.open("test.txt") do |f|
f.each_line do |line|

puts line

end
end

puts "ARGF"
puts ARGF.readlines
