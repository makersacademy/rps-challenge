require_relative 'computer'
require_relative 'player'

class Game
  WEAPONS = [:rock, :paper, :scissors]
  RULES = { rock: :scissors,
  paper: :rock,
  scissors: :paper }

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  # def check_winner
  #  
  #   (extract to separate methods once written)
  #   iterates through Rules hash to check if 
  #   @selection beats opponent selection
  # 
  #   compares player selection with opponent selection to determine
  #   if a draw
  # 
  # end

end