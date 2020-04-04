require_relative 'cpu'
require_relative 'player'

WIN = [
  ['Rock', 'Scissors'], 
  ['Paper', 'Rock'], 
  ['Scissors', 'Paper']
]

class Game

  attr_reader :player, :cpu, :score

  def initialize(name)
    @player = Player.new(name)
    @cpu = CPU.new
    @score = "0:0"
  end

  def result
    if player.weapon == cpu.weapon
      "draw" 
    else
      WIN.include?([player.weapon, cpu.weapon]) ? "win" : "loose"
    end
  end

  def new_game
    @cpu = CPU.new
  end
end
