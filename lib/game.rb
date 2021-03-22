require './lib/weapon.rb'
require './lib/score.rb'
class Game

   def self.new_game(name, player_weapon)
     @game = Game.new(name, player_weapon)
   end

  def self.current_game
    @game 
  end

  attr_reader :name, :player_weapon, :opponent_weapon

  def initialize(name, player_weapon)
    @name = name
    @player_weapon = player_weapon
    @opponent_weapon = Weapon.new.choose
  end

  def outcome
    Score.new(@player_weapon, @opponent_weapon).calculate
  end
end
