class Game

  attr_reader :opponent_choice, :choice, :player

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
    @choice = nil
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

  def update_choice(choice)
    @choice = choice
  end

  def win_logic(choice = @choice, choice2 = @opponent_choice)
    @opponent_choice = choice2
    @choice = choice
    if @choice == @opponent_choice
      "draw"
		elsif @game_scenarios[@choice] == @opponent_choice
    "winner"
		else
    "loser"
    end
  end

end
