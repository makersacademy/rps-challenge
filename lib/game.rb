require_relative 'player'

class Game

  attr_reader :player_1, :stored_game, player_1_move

  def initialize( player_class_1: )
    @player_1 = player_class_1
    @player_1_move
    @stored_game
    @player_1_move
  end

  def move(choice)
    @player_1_move = choice
  end

  def self.game(player_1)
    print "game method is printing"
    @stored_game = Game.new( player_class_1: player_1 )
  end

  def self.game_instance
    print "game instance method is printing"
    @stored_game
  end

end