require 'sinatra/base'

class Player

attr_reader :player_name, :weapon

  def initialize(player_name)
    @player_name = player_name
  end
end
