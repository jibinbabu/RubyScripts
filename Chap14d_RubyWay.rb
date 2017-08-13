#Working on Directories..accesing each files in a directory
#def fn(di)
#Dir.chdir(di) do
#files=[]
#Dir.foreach(".") do |directory|
#next if File.stat(directory).directory?
#put File.mt

#	files=Dir.entries(directory)

#puts files

#	files.each {|f| File.atime(f)}

#end
#end

#fn("/mnt/hgfs"){#}


	#File.mtime("f")



#def freeCheck(dir)

#	puts lines=%x(df #{dir}).split("\n")
#puts lines.last
#puts (lines.split[3].to_f / 1024 / 1024).round(2)
#end

#freeCheck("/")








require "etc"
myself = Etc.getlogin # That’s me!
root_name = Etc.getpwuid(0).name # Root’s name
puts myself
puts root_name













