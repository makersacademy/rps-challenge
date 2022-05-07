require_relative 'computer'

class Game

  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :player, :engine, :computer_weapon, :computer, :player_weapon

  def initialize(player_weapon, computer = Computer.new)
    @player_weapon = player_weapon.to_sym
    @computer = computer
    @computer_weapon = computer.weapon
  end

  def engine
    if @player_weapon == @computer_weapon
      "draw"
    elsif @player_weapon == :rock && @computer_weapon == :scissors
      "player wins"
    elsif @player_weapon == :rock && @computer_weapon == :paper
      "computer wins"
    elsif @player_weapon == :scissors && @computer_weapon == :paper
      "player wins"
    elsif @player_weapon == :scissors && @computer_weapon == :rock
      "computer wins"
    elsif @player_weapon == :paper && @computer_weapon == :rock
      "player wins"
    elsif @player_weapon == :paper && @computer_weapon == :scissors
      "computer wins"
    end
  end

  def result
  end
end
