#!/usr/bin/ruby -w
# counts how many commands start with 'a'..'z'
# in directories :/bin,/sbin,/usr/bin
# tracks letters for which there are no commands

["ls /bin|grep -i ^", "ls /sbin|grep -i ^", "ls /usr/bin|grep -i ^"].each {|cur_dir|

	cmd_cnt = 0
	nocmd_ltrs = ""
	('a'..'z').each{|cur_ltr| 
		cur_cmd = cur_dir + cur_ltr + "|wc "
		print "STARTING..", cur_cmd, "\n" if cur_ltr == 'a'
		(%x[#{cur_cmd.to_a}]).each{|result| 
			m = result.split
			n = m[0].to_i # get first column wordcount, from wc output
			cmd_cnt = cmd_cnt + n
			nocmd_ltrs = nocmd_ltrs + cur_ltr + "," if n == 0
			print cur_ltr, "\t", n, "\n" if n > 0
			}
		}
	p "Total # of cmds in :"+ cur_dir+": #{cmd_cnt}"
	p "No cmds for #{nocmd_ltrs.length/2} ltrs : #{nocmd_ltrs}" if nocmd_ltrs.length > 0
 }
