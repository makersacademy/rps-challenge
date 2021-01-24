require_relative './player.rb'
class Game 

  attr_reader :players 

  def initialize(p1)
    @players = [p1]
  end

  def player_1
    players.last
  end

  def turn(p1, cpu = CPU.new)
    rules = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }
    if p1 == cpu
      "Draw!"
    elsif rules[p1] == cpu
      "You win!"
    else
      "You lose!"
    end

  end
  

end