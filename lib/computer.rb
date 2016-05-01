class Computer
  attr_reader :chosen
  
  def initialize
    @options = ["rock", "paper", "scissors"]
  end

  def self.create
    @computer = Computer.new
  end

  def self.object
    @computer
  end

  def choose_weapon
    @chosen = @options.shuffle.first
  end

  def chosen
    @chosen
  end
end
