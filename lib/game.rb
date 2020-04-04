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
    @score = { player: 0, cpu: 0 }
  end

  def result
    if player.weapon == cpu.weapon
      "draw" 
    elsif WIN.include?([player.weapon, cpu.weapon])
      @score[:player] += 1
      "win" 
    else
      @score[:cpu] += 1
      "loose"
    end
  end

  def print_score
    "#{@score[:player]}:#{@score[:cpu]}"
  end

  def new_game
    @cpu = CPU.new
  end
end
