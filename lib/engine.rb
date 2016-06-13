class Engine

	RULES = {
    'rock' => 'scissors',
    'paper' => 'rock',
    'scissors' => 'paper'
  }

	def run(choice1, choice2)
		if choice2 == RULES[choice1]
			return 1
		elsif choice1 == RULES[choice2]
			return 2
		else
			return nil
		end
	end
end
