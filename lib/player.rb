class Player

  attr_reader :wins

  def initialize(name)
    @name = name
    @wins = 0
  end

  def choose(rps)
    fail 'You must play with rock, paper or scissors!' unless ['rock', 'paper', 'scissors'].include?(rps)
    rps
  end

  def add_win
    @wins += 1
  end

end