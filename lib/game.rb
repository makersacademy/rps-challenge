require_relative 'cpu'
require_relative 'player'

WIN = [
  ['Rock', 'Scissors'], 
  ['Paper', 'Rock'], 
  ['Scissors', 'Paper']
]

class Game

  attr_reader :player, :cpu

  def initialize(name)
    @player = Player.new(name)
    @cpu = CPU.new
  end

  def result
    if player.weapon == cpu.weapon
      "draw" 
    else
      WIN.include?([player.weapon, cpu.weapon]) ? "win" : "false"
    end
  end

  def new_game
    @cpu = CPU.new
  end
end
