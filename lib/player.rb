require_relative 'rock'
require_relative 'paper'
require_relative 'scissors'

class Player

attr_reader :name, :weapon, :weapons

  def initialize(player)
    @name = player
    @weapons = {"Rock" => Rock.new, "Paper" => Paper.new, "Scissors" => Scissors.new}
  end

  def weapon_assign(weapon)
    @weapon = @weapons[weapon]
  end

end
