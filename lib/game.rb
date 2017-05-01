require './lib/player'

class Game
  attr_reader :players

  def initialize(*players)
    if players.length < 2
      @players = [players[0], Player.new('Machine')]
    else
      @players = players
    end
  end


end
