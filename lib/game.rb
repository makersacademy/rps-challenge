
require_relative 'weapon'
require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :rules, :player, :computer, :computer_choice, :player_choice

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def rules
    @rules = {rock: :paper, paper: :scissors, scissors: :paper}
  end

  def play
    @computer_choice = computer.select_weapon
    @player_choice = player.select_weapon(player_choice)
  end

  def draw?
    computer_choice == player_choice
  end

  def winner
    rules[computer_choice] == player_choice ? player : computer

  end


end
