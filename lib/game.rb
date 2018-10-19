class Game

  def initialize(player1)
    @player1 = player1
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  def player1
    @player1
  end

end
