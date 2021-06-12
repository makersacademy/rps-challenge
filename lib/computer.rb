class Computer
  attr_reader :name

  def initialize
    @name = "CPU"
  end

  def move
    ["rock"].sample
  end
end