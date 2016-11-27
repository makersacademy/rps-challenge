class Game
  RULES = {rock: :scissors, paper: :rock, scissors: :paper}
  attr_reader :players

  def initialize(player1,player2)
    @players = [player1, player2]
  end

  def win?
    return !RULES.select{|k,v| k==@players[0].weapon && v==@players[1].weapon}.count.zero?
  end

  def draw?
    return @players[0].weapon == @players[1].weapon
  end

end
