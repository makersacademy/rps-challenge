require './lib/player'
require './lib/weapon'
class Game

  def add(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def play_game
    return "The game was a Draw" if @player_1.weapon.type == @player_2.weapon.type
    (@player_1.weapon).beat?(@player_2.weapon) ? 'You won! CONGRATULATIONS' : 'Player 2 won! BETTER LUCK NEXT TIME'
  end
end
