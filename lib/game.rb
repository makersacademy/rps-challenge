class Game

  attr_reader :players

  def initialize(player1)
    @player1 = player1
    @players = [@player1]
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

end
