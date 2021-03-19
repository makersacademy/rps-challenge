class Game
  attr_accessor :player1, :player_1_turn

  def initialize(player1, player2 = "computer", player_class = Player)
    @player_class = player_class
    @player1 = @player_class.new(player1)
    @player2 = @player_class.new(player2)
    @rps = ["rock","paper","scissors"]
  end

  def self.new_game(player1)
    @@this_game = Game.new(player1)
  end

  def self.stored_game
    @@this_game
  end

  def play

  end
end
