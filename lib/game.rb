class Game

  attr_reader :opponent_choice, :player

  def initialize(player)
    @player = player
    @opponent_choice = random
    @game_scenarios = {
    			"rock" => "scissors",
    			"paper" => "rock",
    			"scissors" => "paper"
    		}
  end

  def random
    ['rock', 'paper', 'scissors'].sample
  end

  def win_logic(choice, choice2 = @opponent_choice)
    @opponent_choice = choice2
    if choice == choice2
      "draw"
		elsif @game_scenarios[choice] == choice2
    choice
		else
    choice2
    end
  end

end
