require_relative './game.rb'

class Controller

  def new_game(player_1, player_2)
    game = Game.new(player_1, player_2)
    print game.weapons
    game.weapons
    game.determine_result
  end

end