require_relative './player.rb'
require_relative './cpu.rb'
class Game 

  attr_reader :player_1 

  def initialize(p1)
    @player_1 = p1
  end

  def turn(p1, cpu = CPU.new)
    rules = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }
    if p1.turn == cpu.move
      "Draw!"
    elsif rules[p1.turn] == cpu.move
      "You win!"
    else
      "You lose!"
    end
  end
  
end