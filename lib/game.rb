require_relative 'player'
require_relative 'machine'

class Game
  attr_reader :weapon, :player, :machine

  def initialize(player, weapon, machine = Machine.new)
    @player = player
    @weapon = weapon
    @machine = machine.random_rps
  end

  def outcomes
    rules = {
      ROCK: { ROCK: :draw, PAPER: :lose, SCISSORS: :win },
      PAPER: { ROCK: :win, PAPER: :draw, SCISSORS: :lose },
      SCISSORS: { ROCK: :lose, PAPER: :win, SCISSORS: :draw }
    }

    rules[@weapon.to_sym][@machine.to_sym]
  end

end
