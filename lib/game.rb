class Game

  attr_reader :player_one

  def self.start_game(player1)
    @current_game = Game.new(player1)
  end

  def self.current_game
    @current_game
  end

  def initialize(player1)
    @player_one = player1
  end

  def play(choice)

  end
end
