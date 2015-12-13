class Game


attr_reader :players

	def initialize(player1, player2)
		@players=[player1, player2]
	end


	def result(player1, computer)
		return :draw if player1 == computer
		beats?(player1, computer) ? :win : :lose
	end


private

	def beats?(player1, computer)
		RULES[player1] == computer
	end

RULES = { :"Steve Irwin" => :"Crocodile",
					:"Crocodile" => :"Stingray", 
					:"Stingray" => :"Steve Irwin" }

end