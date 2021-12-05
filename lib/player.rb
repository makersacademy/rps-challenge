class Player
  RPS = ['rock', 'paper', 'scissors'].freeze
  attr_reader :name, :points

  def initialize(name)
    @name = name
    # @points = 0
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
