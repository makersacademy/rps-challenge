class Bout

  attr_reader :winner, :players

  def initialize(players)
    @players = players
  end

  def who_won(bout = self)
    @winner = Game.get.rules.declare_winner(bout)
  end

end
