require_relative 'computer'

class Player

  attr_reader :name, :choice, :score

  def initialize name, computer = Computer
    name.empty? ? @name = "Computer" : @name = name.capitalize
    @score = 0
    @computer = computer
  end

  def save_choice call = @computer.new.choice
    @choice = call
  end

  def win
    @score += 1
  end

end
