require_relative 'computer'
require_relative 'player'

class Game

attr_reader :player, :computer_weapon, :result

    WEAPONS = [:rock, :paper, :scissors]
    RULES = { rock: :scissors, paper: :rock, scissors: :paper }


  def initialize(player)
    @player = Player.new(player)
    # @computer = Computer.new(computer)
  end

  def computer_weapon
    @computer_weapon = Game::WEAPONS.sample
  end

  def result
    return :win if @player.weapon == :rock && computer_weapon == :scissors
    return :win if @player.weapon == :scissors && computer_weapon == :paper
    return :win if @player.weapon == :paper && computer_weapon == :rock
    return :draw if @player.weapon == computer_weapon
    return :lose
  end

end