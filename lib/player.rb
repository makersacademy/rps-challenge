class Player
  attr_reader :score, :move
  attr_accessor :name

  def self.instance
    @player ||= Player.new
  end

  def initialize
    @score = 0
  end

  def increment_score
    @score += 1
  end

  def move=(move)
    @move = move.capitalize
  end

  def reset
    @score = 0
    @name = ""
  end
end
