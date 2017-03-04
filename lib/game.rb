

class Game

  attr_reader :human, :computer

  def initialize(human, computer)
    @human = human
    @computer = computer
  end

  def self.create(human, computer)
    @game = Game.new(human, computer)
  end

  def self.instance
    @game
  end

  def judge_scores
  end

end
