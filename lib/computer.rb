class Computer < Player
  def self.instance
    @computer ||= Computer.new
  end

  def initialize
    super
    @name = "Computer"
  end

  def generate_move
    @move = random_move
  end

  def reset
    @score = 0
  end

  private

  def random_move
    ["Rock", "Paper", "Scissors"].sample
  end
end
