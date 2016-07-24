require_relative 'rock'
require_relative 'paper'
require_relative 'scissors'

class Machine

  attr_reader :weapon, :weapons

  def initialize
    @weapons = [Rock.new, Paper.new, Scissors.new]
  end

  def weapon_assign
    @weapon = @weapons[rand(0..2)]
  end
end
