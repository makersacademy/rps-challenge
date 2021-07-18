require_relative 'player'

class Game
  attr_reader :player
  def initialize(name)
    @player = Player.new(name)
  end

  def generate_move
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def player_move(move)
    @player.move = move
  end

end