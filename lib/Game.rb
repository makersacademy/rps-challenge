class Game 

	def options
		@options = %w(scissors paper rock)
	end

   RULES= {
    rock:     { scissors: :win, paper:    :lose, rock:     :draw },
    scissors: { paper:    :win, rock:     :lose, scissors: :draw },
    paper:    { rock:     :win, scissors: :lose, paper:    :draw }
  } 

  def winner(pick1, pick2)
    RULES[pick1][pick2]
  end

  def winner_object
    
  end

end

   # rock:     { scissors: :player_one, paper:    :player_two, rock:     :draw },