class Game

  attr_accessor :player1, :player2, :turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @turn = player1
  end

  def self.create_instance(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.return_instance
    @game
  end

  def switch
    @turn = @players.reverse[0]
  end

  def choose(choice)
    @turn.choose(choice)
  end

end
