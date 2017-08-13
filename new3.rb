#!/usr/bin/ruby -w








def sayWhat
	(1..3).each{|x| yield; p "back in sayWhat :" + x.to_s }
end

def sayWhat2 (&someWork)
	p "2nd time.."
	someWork.call	
end
sayWhat {p 'ding dong'}
sayWhat2 {puts 'ding ding'}
