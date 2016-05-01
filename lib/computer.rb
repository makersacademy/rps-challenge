class Computer
  attr_reader :computer
  attr_accessor :score
  DEFAULT_SCORE = 0

  def initialize
    @computer = 0
    @score = DEFAULT_SCORE
  end

  def self.create
    @computer = Computer.new
  end

  # def score
  #   @score
  # end

end
