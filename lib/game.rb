require './lib/computer'

class Game

  attr_reader :name, :computer

  TO_WIN = {
    'rock' => 'scissors',
    'paper' => 'rock',
    'scissors' => 'paper'
  }

  def initialize(name, computer)
    @name = name
    @computer = computer
  end

  def self.create(name, computer)
    @game = Game.new(name, computer)
  end

  def self.instance
    @game
  end

  def result(pl1, pl2)
    if pl1 == pl2
      "IT'S A DRAW!"
    elsif TO_WIN[pl1] == pl2
      "#{@name} wins!"
    elsif TO_WIN[pl2] == pl1
      "computer wins!"
    end
  end
end
