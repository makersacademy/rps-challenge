class Player

  attr_accessor :name
  attr_reader :wins

  def initialize(name)
    @name = name
    @wins = 0
  end

  def choose(choice)
    rps = ['rock', 'paper', 'scissors']
    fail 'You must play with rock, paper or scissors!' unless rps.include?(choice)
    choice
  end

  def cpu_choice
    ['rock', 'paper', 'scissors'].sample
  end

  def add_win
    @wins += 1
  end

end