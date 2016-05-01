class Computer
  attr_accessor :score
  DEFAULT_SCORE = 0

  def initialize
    @score = DEFAULT_SCORE
  end

  def self.create
    @computer = Computer.new
  end


end
