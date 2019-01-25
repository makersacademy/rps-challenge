
class Game
  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  attr_reader :player1

  def initialize(player1)
    @player1=player1
  end

end
