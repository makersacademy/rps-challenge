class Computer < Player
  attr_reader :move

  def self.instance
    @computer ||= Computer.new
  end

  def initialize
    super
    @name = "Computer"
  end

  def generate_move
    @move = ["Rock", "Paper", "Scissors"].sample
  end

  def reset
    @score = 0
  end

end