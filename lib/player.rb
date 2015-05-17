class Player

  attr_accessor :name
  attr_reader :wins

  def initialize(name)
    @name = name
    @wins = 0
  end

  def cpu_choice_rps
    ['rock', 'paper', 'scissors'].sample
  end

  def cpu_choice_rpsls
    ['rock', 'paper', 'scissors', 'lizard', 'Spock'].sample
  end

  def add_win
    @wins += 1
  end

end