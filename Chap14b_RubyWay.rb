require "shell"
#Shell.def_system_command “echo”
#sh=Shell.new
#sh.cd("/mnt/hgfs/Ruby_Scripts")
#sh.ls>STDOUT

#transact command enables block of shell commands
#sh = Shell.new
#sh.transact do
#	echo(“A line of data”) > “somefile.txt

#	cat(“somefile.txt”, “otherfile.txt”) > “thirdfile”
#	cat(“thirdfile”) | tee(“file4”) > STDOUT
#end
sh=Shell.new
sh.echo("printing all files")
sh.foreach("/mnt/hgfs/Ruby_Scripts") {|l| puts l}#loops through all files in that path

flag=sh.exist? "test.txt"
puts flag
