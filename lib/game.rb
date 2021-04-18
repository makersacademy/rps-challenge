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

    def won(p1, p2)
      win = [['rock', 'scissors'],['scissors', 'paper'],['paper', 'rock']].freeze
      case
        when win.include?([p1.move, p2.rmove]) then return p1.name
        when win.include?([p2.rmove, p1.move]) then return p2.name
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