class Player

  attr_accessor :name
  attr_reader :wins

  def initialize name
    @name = name
    @wins = 0
  end

  def cpu_choice rules
    if rules == 'rps'
      ['rock', 'paper', 'scissors'].sample
    else
      ['rock', 'paper', 'scissors', 'lizard', 'Spock'].sample
    end
  end

  def add_win
    @wins += 1
  end

end