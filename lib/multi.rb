# lib/multi.rb

require './lib/player'
require './lib/game'

class Multi
  attr_reader :players_num
  
  def initialize(player_1_name, player_2_name, players_num)
    @players_num = players_num
    @player_1_name = player_1_name
    @player_2_name = player_2_name
  end

  def set_players
    @player_1 = Player.new(@player_1_name)
    if @players_num == 1
      @player_2 = Player.new("Computer") 
    else
      @player_2 = Player.new(@player_2_name)
    end
  end

  def game_creation
    set_players
    return game = Game.new(@player_1, @player_2, players_num)
  end
end
