#System() and exec() to execute a command line appilication from Ruby Script

system("date") # argument is passed as a string
# $? returns invoke process id and exit status 
puts $?

#exec("pwd") 

#puts $? #not executed

#To capture values onto a variable use %x 

capVar=%x(date)
puts " The size of capVar is."
puts capVar.size 

puts "\n"
puts "\n"
#fork() is used to create independet process 
puts "The main process id is #{Process.pid}"
puts "I'm creating a new process using fork() call"
fork do
	puts "Process id of forked process is #{Process.pid}"
end
puts "Skipped the fork and I'm outside the fork and the process id of main is still#{Process.pid}"
#puts "killing #{Process.kill(1,pid)}"#HUP signal to main process

#manipulating Standard Input/Output using open3.popen3 

#require "open3"
#filen=%w[f1 f2 f3]# %w is instead of ["f1","f2"]
#output, errout =[],[] #parallel assignment in ruby
#open3.popen3("xargs","ls","-l") do |inp,out,err|


#	output=out.readlines
#	errout=err.readlines
#end

#puts "output std...#{output.size}"
#puts "errout std.. #{errout.readlines}"
puts "Command line ARGV"
puts "args are #{ARGV[0]}" # to get arguments from command line
puts "size = #{ARGV.size}"

puts "File ARGF"
puts ARGF.readlines

#OptionParserlibrary





