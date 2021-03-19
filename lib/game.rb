require './lib/player'

class Game
  attr_reader :player
  def initialize(name)
    @player = Player.new(name)
  end

  def move(choice)
    @choice = choice
  end

  def computer_move
      ["Rock", "Paper", "Scissors"].sample
  end

  def determines_outcome
  end
end
