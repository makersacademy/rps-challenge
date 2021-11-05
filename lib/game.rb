require_relative "player"
require_relative "engine"
class Game
  attr_reader :player, :engine

  def initialize(player = Player.new, engine = Engine.new)
    @player = player
    @engine = engine
  end

  def play(player_move)
    @player.make_move(player_move)
    @engine.auto_move
  end

  def won(player_1, player_2)
    win = [['rock', 'scissors'], ['scissors', 'paper'], ['paper', 'rock']].freeze
    case
      when win.include?([player_1.move, player_2.rmove]) then return player_1.name
      when win.include?([player_2.rmove, player_1.move]) then return player_2.name
    else
        return "Draw!" 
    end
  end

  def self.create(player, engine)
    @game = Game.new(player, engine)
  end
    
  def self.instance
    @game
  end
end
