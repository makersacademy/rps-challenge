class Computer

  attr_reader :converter

  def initialize
    @converter = ["rock", "paper", "scissors"]
  end

  def selection
    converter[rand(0..2)]
  end
end
