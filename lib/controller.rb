require_relative './game.rb'
require_relative './player.rb'
require_relative './computer.rb'

class Controller

  #class methods used in order to access games  across server calls. the use of
  #a Controller class might be nonsense I'm really not sure. This logic could
  #maybe have gone in the game class, and I'm not sure the class methods were
  #required in the end.

  def self.create(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def self.run_game
    @p1_weapon = @player_1.weapon
    @p2_weapon = @player_2.weapon
    @game.determine_result(@p1_weapon, @p2_weapon)
  end

end