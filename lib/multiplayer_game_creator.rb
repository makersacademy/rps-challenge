require_relative 'multiplayer_game'

class MultiplayerGameCreator

  def self.instance
    @minstance ||= MultiplayerGameCreator.new
  end

  def initialize(multiplayer_game_class: MultiplayerGame)
    @multiplayer_game_class = multiplayer_game_class
  end

  def new_player(params)
    unless @multiplayer_game_class.instance
      @multiplayer_game_class.create(params)
    else
      @multiplayer_game_class.instance.add_second(params)
    end
  end
end
