class Game

  attr_reader :options

  def initialize
    @options = { 1 => "Rock", 2 => "Paper", 3 => "Scissors" }
  end

  def choice
    @options[rand(1..3)]
  end

end
