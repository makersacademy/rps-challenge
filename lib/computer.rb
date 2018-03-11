class Computer

  attr_reader :converter

  def initialize
    @converter = ["rock", "paper", "scissors", "spock", "lizard"]
  end

  def selection
    converter[rand(0..4)]
  end
end
