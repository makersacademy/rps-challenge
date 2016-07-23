require_relative 'rock'
require_relative 'paper'
require_relative 'scissors'

class Machine

  attr_reader :weapon, :weapons

  def initialize
    @weapons = ["Rock", "Paper", "Scissors"]
  end

  def choose_weapon
    @weapon = @weapons[rand(0..2)]
  end
end
