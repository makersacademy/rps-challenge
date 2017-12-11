require_relative 'computer'
require_relative 'player'

class Game

  attr_reader :player, :computer
  attr_accessor :choice, :computer_choice

  RULES = { rock: :scissors,
           paper: :rock,
           scissors: :paper }

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def result(player_choice, computer_choice = computer.weapon_choice)
    return 'You won!' if RULES[player_choice] == computer_choice
    return 'You lost!' if RULES[computer_choice] == player_choice
    return 'You drew!' if player_choice == computer_choice
  end

end
