require_relative 'multiplayer_game'
require_relative 'player'

class MultiplayerGameCreator

  def self.instance
    @minstance ||= MultiplayerGameCreator.new
  end

  def initialize(multiplayer_game_class: MultiplayerGame, player_class: Player)
    @multiplayer_game_class = multiplayer_game_class
    @player_class = player_class
  end

  def new_player(name, session)
    player = @player_class.new(name, session)
    add_player(player)
  end
  
  private 
  
  def add_player(player)
    unless @multiplayer_game_class.instance
      @multiplayer_game_class.create(player)
    else
      @multiplayer_game_class.instance.add_second(player)
    end
  end
end
