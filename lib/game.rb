require_relative 'player'
class Game

  attr_reader :players, :p1_hand, :comp_hand


  def initialize(*player)
    @players = []
    @players << player
    @array = [:rock, :paper, :scissors]
  end

  def play(p1_hand)
    @p1_hand = p1_hand
    @comp_hand = @array.sample
  end

  def winner
      return "It's a draw!" if equal?
      return "You win" if p1_wins?
      return "Computer wins" if comp_wins?
  end


  private

  def equal?
    "Draw!" if  (@comp_hand == @p1_hand)
  end


  def p1_wins?
     @p1_hand == :rock && @comp_hand == :scissors || @p1_hand == :scissors && @comp_hand == :paper || @p1_hand == :paper && @comp_hand == :rock
  end

  def comp_wins?
   @comp_hand == :rock && @p1_hand == :scissors || @comp_hand == :scissors && @p1_hand == :paper || @comp_hand == :paper && @p1_hand == :rock
  end

end
