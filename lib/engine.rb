class Engine
  attr_reader :name, :rmove
  attr_accessor :points
  ::BASE_POINTS = 0

  def initialize
    @name = "MATRIX"
    @points = ::BASE_POINTS
  end

  def auto_move
    @rmove = ['rock', 'paper', 'scissors'].sample
  end
end
