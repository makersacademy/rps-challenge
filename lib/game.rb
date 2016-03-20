require_relative 'computer'
require_relative 'player'

class Game

attr_reader :player, :computer, :result

    WEAPONS = [:rock, :paper, :scissors]
    RULES = { rock: :scissors, paper: :rock, scissors: :paper }


  def initialize(player, computer)
    @player = Player.new(player)
    @computer = Computer.new(computer)
  end

  def result
    return :win if @player.weapon == :rock && computer.weapon == :scissors
    return :win if @player.weapon == :scissors && computer.weapon == :paper
    return :win if @player.weapon == :paper && computer.weapon == :rock
    return :draw if @player.weapon == computer.weapon
    return :lose
  end

end