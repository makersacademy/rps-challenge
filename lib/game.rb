class Game
  require_relative './player.rb'
  attr_reader :player1, :player2, :battle

  RULES = [
    { rock: :scissors },
    { paper: :rock },
    { scissors: :paper }               
  ]
  
  def initialize(player1:, player2: nil)
    @player1 = player1
    @player2 = player2 || Player.new()
    @moves = {}
  end
  
  def return_winner
    return player1.name if move_wins?
    player2.name
  end

  def move_wins?
    @moves[@player1.move] = @player2.move
    RULES.include?(@moves)
  end 

end