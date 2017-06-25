require './lib/player.rb'
require './lib/computer.rb'

class Game
  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  attr_reader :player, :computer

  def self.create(player, computer = Computer.new)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
    return :draw if @player.weapon == @computer.weapon
    return :win if player_won?
    return :lose
  end

private

  def player_won?
    RULES[@player.weapon] == @computer.weapon
  end

end
