class Results
  attr_reader :player, :computer
   
  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def win?
    outcome == :win
  end
   
  def lose?
   outcome == :lose
  end
   
  def draw?
    outcome == :draw
  end
   
  private
   
  def outcome
    return :win if player_wins?
    return :draw if @player.move == @computer
    return :lose
  end

  def player_wins?
    @player.move == "rock" && @computer == "scissors" ||
    @player.move == "paper" && @computer == "rock" ||
    @player.move == "scissors" && @computer == "paper"
  end
end


# GAME_RULES = {
  #   "rock": {"rock": :draw, "paper": :lose, "scissors": :win},
  #   "paper": {"rock": :win, "paper": :draw, "scissors": :lose},
  #   "scissors": {"rock": :lose, "paper": :win, "scissors": :draw},
  # }

  # attr_reader :player_name, :player_shape, :opponent_shape

  # def initialize(options)
  #   @player_name = options["player_name"]
  #   @player_shape = options["player_shape"]
  #   @opponent_shape = options["opponent_shape"]
  # end


# GAME_RULES[@player][@computer]
