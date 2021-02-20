require_relative 'computer'
require_relative 'weapon'

class RPS
  def initialize(player, weapon_class = Weapon, computer = Computer.new)
    @player = player
    @player_choice = nil
    @weapon_class = weapon_class
    @computer = computer
  end

  def self.create(player)
    @rps = RPS.new(player)
  end

  def self.instance
    @rps
  end

  def player
    @player
  end

  def player_choose(choice)
    @player_choice = @weapon_class.new(choice)
  end

  def result
    @player_choice.draw?(@computer) ? :draw : @player_choice.beats?(@computer) ? :win : :lose
  end
end
