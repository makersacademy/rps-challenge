require_relative 'comp.rb'

class Game

  def initialize
    @weapon = $weapon
    @comp_weapon = Comp.new.comp_weapon
  end

  def play_game

  end
end
