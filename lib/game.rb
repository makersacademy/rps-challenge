require_relative 'player'

class Game

  def initialize(player1)
    @players = [player1, "Computer"]
  end

  def player1
    @players.first
  end

  private

  attr_reader :players

end
