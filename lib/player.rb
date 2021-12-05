class Player
  RPS = ['rock', 'paper', 'scissors'].freeze
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def choose_rock
    RPS.first
  end

  def choose_paper
    RPS[1]
  end

  def choose_scissors
    RPS.last
  end
end
