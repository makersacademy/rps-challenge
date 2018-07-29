# require_relative 'player'
# require_relative 'pc'
 
class Results
  # GAME_RULES = {
  #   "rock": {"rock": :draw, "paper": :lose, "scissors": :win},
  #   "paper": {"rock": :win, "paper": :draw, "scissors": :lose},
  #   "scissors": {"rock": :lose, "paper": :win, "scissors": :draw},
  # }
  
  attr_reader :player, :computer
   
  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  # attr_reader :player_name, :player_shape, :opponent_shape

  # def initialize(options)
  #   @player_name = options["player_name"]
  #   @player_shape = options["player_shape"]
  #   @opponent_shape = options["opponent_shape"]
  # end

  def win?
    outcome == :win
    true
  end
   
  def lose?
   outcome == :lose
   true
  end
   
  def draw?
    outcome == :draw
    true
  end
   
  private
   
  def outcome
    return :draw if @player.move == @computer
    return :win if @player.move == "rock" && @computer == "scissors"
    return :win if @player.move == "paper" && @computer == "rock"
    return :win if @player.move == "scissors" && @computer == "paper"
    return :lose
  end
end
   
  # def umpire
  #   if @player.move == "rock" && @computer.pc_move == "scissors"
  #     "#{@player.move.capitalize} beats #{@computer.pc_move}: You rule supreme!"
  #   end
  # end
# end

# GAME_RULES[@player][@computer]
