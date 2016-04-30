class Computer
  attr_reader :computer

  def initialize
    @computer = 0
  end

  def self.create
    @computer = Computer.new
  end

  def self.instance
    @computer
  end

  def choose
    [:ROCK, :PAPER, :SCISSORS].sample
  end

end
