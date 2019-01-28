require "./models/computer"
require "./models/player"

class Game

  attr_reader :winner

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def result
    if @computer.weapon == @player.weapon
      @winner == "draw"
    elsif @computer.weapon == :rock && @player.weapon == :scissors
      @winner == @compuer
    elsif @computer.weapon == :paper && @player.weapon == :rock
      @winner == @computer
    elsif @computer.weapon == :scissors && @player.weapon == :paper
      @winner == @computer
    else
      @winner == @player
    end
  end

end
