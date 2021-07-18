require_relative 'player'

class Game

  def initialize(name)
    @player = Player.new(name)
  end

  def generate_move
    ['rock', 'paper', 'scissors'].sample
  end
end