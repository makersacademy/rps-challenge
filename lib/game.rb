require_relative 'computer'

class Game

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :player_choice, :computer

  def initialize(computer = Computer.new)
    @computer = computer
  end

  def player_choice(weapon)
    raise "Please select again" unless Game::WEAPONS.include? weapon.to_sym
    @player_choice = weapon.to_sym
  end

  def result
    @player_choice == @computer.weapon ? :draw :
    RULES[@player_choice] == @computer.weapon ? :win : :lose
  end

  def self.create(computer = Computer.new)
    @game = Game.new(computer = Computer.new)
  end

  def self.instance
    @game
  end
end
