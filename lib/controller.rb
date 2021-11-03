require_relative './game.rb'

class Controller

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def self.run_game
    @game.weapons
    @game.determine_result
  end

end