class Player

  def initialize(name)
    @name = name
    @wins = 0
  end

  def choose(rps)
    fail 'You must play with rock, paper or scissors!' unless ['rock', 'paper', 'scissors'].include?(rps)
    rps
  end

  def cpu_choice
    ['rock', 'paper', 'scissors'].sample
  end

  def wins
    @wins
  end

  def add_win
    @wins += 1
  end

end