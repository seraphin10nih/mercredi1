def demande
	puts "salut, bienvenue dans ma super pyramide! Combien d'étages veux-tu?"
	num = Integer(gets.chomp)
	dieze = 1
	while num >0
		num -=1
		puts " "*num << "#"*dieze
		dieze +=2
	end

end 
demande