require_relative 'computer'
class Game 
  attr_reader :player, :choice, :computer
  def initialize(name, computer)
    @player = name
    @choice
    @computer = computer
  end

  def self.instance
    @game
  end

  def self.set_game(name)
    @game = Game.build(name)
  end

  def self.build(name,computer = Computer.new)
    new(name, computer)
  end
  
  def set_choice(choice)
    @choice = choice
  end

  def set_computer
    computer.set_choice
  end
end
