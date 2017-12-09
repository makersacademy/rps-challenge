require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :player, :computer, :player_weapon, :computer_weapon
  WEAPONS = [:rock, :paper, :scissors]
  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def player_choice(weapon)
    raise "not a possible weapon" unless WEAPONS.include? weapon
    @player_weapon = weapon
  end

  def computer_weapon
    @computer_weapon = @computer.weapon
  end

  # def result
  #   RULES[player_choice][computer.choice()]? :win : :lose
  # end
end
