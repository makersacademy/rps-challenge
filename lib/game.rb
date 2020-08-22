class Game 

  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def self.create(player1, player2)
    @instance_of_game = Game.new(player1, player2)
  end

  def self.instance
    @instance_of_game
  end

  def player_1
    @players[0]
  end

end
