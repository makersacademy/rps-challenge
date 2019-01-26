require 'game'

class Middle
  def self.create_game(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end
end