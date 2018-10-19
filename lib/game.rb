class Game

  attr_reader :player1, :player2, :gametype

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
    # @choice = nil
    # if @player2.playertype == "computer"
    #   @opponent_choice = random
    #   @gametype = "Single player"
    # else
    #   @opponent_choice = nil
    #   @gametype = "Multiplayer"
    # end
    @game_scenarios = {
    			"rock" => "scissors",
    			"paper" => "rock",
    			"scissors" => "paper"
    		}
  end

  def random
    ['rock', 'paper', 'scissors'].sample
  end

  def update_choice(choice, player)
    # @choice = choice
    if player.playertype == "computer"
      choice = random
    else
      choice = choice
    end
    player.update_choice(choice)
  end

  # def update_oppchoice(choice)
  #   @opponent_choice = choice
  # end

  def win_logic(round1 = @player1.choice, round2 = @player2.choice)

    if round1 == round2
      "draw"
		elsif @game_scenarios[round1] == round2
    @player1
		else
    @player2
    end
  end

end
