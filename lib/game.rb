class Game

    RULES = { rock: ['scissors','lizard'],
        paper: ['rock', 'spock'],
        scissors: ['paper', 'lizard'],
        lizard: ['paper', 'spock'],
        spock: ['rock', 'scissors'] }

	def initialize(player_1, player_2)
		@players = [player_1, player_2]
	end
	
	def player_1
		@players.first
	end
	
	def player_2
		@players.last
	end
    
	def rules
		RULES
	end	

    def beats?(weapon1, weapon2)
      RULES[weapon1.to_sym].include? weapon2
    end
    
    def result
      if beats?(player_1.weapon, player_2.weapon)
        return :player_1_won
      elsif player_1.weapon == player_2.weapon
        return :draw
      elsif beats?(player_2.weapon, player_1.weapon)
        return :player_2_won 
      else
      	return "banananananaaaaaaaas"
      end
    end

end 