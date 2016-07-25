
require_relative 'weapon'
require_relative 'player'
require_relative 'computer'

class Game

  RULES = {rock: :paper, paper: :scissors, scissors: :paper}

  attr_reader :rules, :player, :computer, :computer_choice, :player_choice

  def self.create(player,computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @player = player
    @computer = computer
  end
  
  def play(player_choice)
    @computer_choice = computer.select_weapon
    @player_choice = player_choice.to_sym
  end

  def draw?
    computer_choice == player_choice
  end

  def winner
    RULES[computer_choice] == player_choice ? player : computer
  end

end
