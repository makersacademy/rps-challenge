class Computer
  attr_accessor :score
  attr_reader :name
  DEFAULT_SCORE = 0

  def initialize
    @score = DEFAULT_SCORE
    @name = 'Computer'
  end

  def self.create
    @computer = Computer.new
  end


end
