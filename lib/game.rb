class Game

  attr_reader :player1, :player2
  
  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
  end

  def self.create(player1,player2)
    @game = Game.new(player1,player2)
  end

  def self.instance
    @game
  end

end