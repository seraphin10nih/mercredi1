class Rano
	 def pyramida(chiffre=2)
	 	dimension = 10
	 	dim_pyramid = dimension*2
	 	dim_espace = dimension + 1
	 	for hauteur in 1..dim_pyramid
	 		if hauteur % 2 != 0 then
	 			dieze = "#"*hauteur
	 			dim_espace -= 1
	 			if dim_espace == chiffre then
	 				espace = " "*(dim_espace - 1) + "S"
	 				puts "#{espace}#{dieze}"
	 			else
	 				espace = " "*dim_espace
	 				puts "#{espace}#{dieze}"
	 			end
	 		end
	 	end
	end

	def lance_de
		pyramida
		position = 2
		verification = true
		loop do 
			puts "Lancez votre dé"
			dac = gets.chomp
			nombre = rand(1..6)
			if nombre== 5 || nombre == 6
				position += 1
				if position == 11 then
					pyramida(position)
					puts "vous avez dépassé. OURRAHHHHHH"
					verification = false
				else 
					pyramida(position)
					puts "vous etes à la #{position} case."
				end
			elsif nombre == 1 then
				position -= 1
				if position < 2 then
					puts " vous avez descendu à la #{position} position."
					verification = false
				else
					pyramida(position)
					puts " vous etes à la #{position}eme position."
				end
			else
				pyramida(position)
				puts "vous etes à la #{position}eme position."
			end
			break if verification == false
		end
	end
				

end
pyramida = Rano.new
pyramida.lance_de

