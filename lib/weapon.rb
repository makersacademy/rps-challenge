class Weapon
	

RULES = {:"Steve Irwin" => :"Crocodile",
					:"Crocodile" => :"Stingray", 
					:"Stingray" => :"Steve Irwin"}


attr_reader :type


	def initialize(type)
		@type = type.to_sym	
	end

	def defeats?(choice, choice2)
		RULES[choice] == choice2		
	end


	# def evaluate(one, two, three)
	# 	one || two && three
	# end





	# def evaluate(choices)
	# 	choices.each{|choice| RULES[choice]==}  RULES[choices][other.type]
	# end



end