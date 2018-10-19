class Game

  attr_reader :opponent_choice, :choice, :player1, :player2, :gametype

  def self.create(player1, player2, gametype)
    # p player1
    # p player2
    @game = Game.new(player1, player2, gametype)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2, gametype)
    @player1 = player1
    @player2 = player2
    @gametype = gametype
    @choice = nil
    if @player2.playertype == "computer"
      @opponent_choice = random
      @gametype = "Single player"
    else
      @opponent_choice = nil
      @gametype = "Multiplayer"
    end
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

  def update_oppchoice(choice)
    @opponent_choice = choice
  end

  def win_logic(choice = @choice, choice2 = @opponent_choice)
    @opponent_choice = choice2
    @choice = choice
    if @choice == @opponent_choice
      "draw"
		elsif @game_scenarios[@choice] == @opponent_choice
    @player1
		else
    @player2
    end
  end

end
