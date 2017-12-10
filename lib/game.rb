class Game
  attr_reader :player1, :player2
  def initialize(player1, player2, player_class = Player)
    @player1 = player_class.new(player1)
    @player2 = player_class.new(player2)
  end

  def self.create_game(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.game
    @game
  end

end
