require_relative 'player'

class Multiplayer

  attr_accessor :p1, :p2, :defeat

  def initialize(player1, player2)
    @p1       =   player1
    @p2       =   player2
    @defeat   =   {rock: :scissors, paper: :rock, scissors: :paper}
  end

  def play(player1, player2)
    p1_choice = p1.choose(player1.to_sym)
    p2_choice = p2.choose(player2.to_sym)
    return "It's a draw!" if a_draw?(p1_choice, p2_choice)
    return "#{p1.name} wins!" if p1_wins?(p1_choice, p2_choice)
    return "#{p2.name} wins!" if p2_wins?(p1_choice, p2_choice)
  end

  private

  def a_draw?(p1_choice, p2_choice)
    p1_choice == p2_choice
  end

  def p1_wins?(p1_choice, p2_choice)
    p2_choice == defeat[p1_choice]
  end

  def p2_wins?(p1_choice, p2_choice)
    p1_choice == defeat[p2_choice]
  end

end
