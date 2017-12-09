class Game

  attr_reader :player1

  def initialize(player1)
    @player1 = player1
  end

  def self.create_new_game(player1)
    @game = Game.new(player1)
  end

  def self.game_instance
    @game
  end

end
