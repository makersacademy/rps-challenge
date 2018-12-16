require_relative 'computer'

class Game
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

  def winner
    player_option = player.selected_option
    computer_option = computer.computer_choice
    return 'It is a draw!' if player_option == computer_option
    return 'You won!' if (player_option == 'rock') && (computer_option == 'scissors') ||
                         (player_option == 'scissors') && (computer_option == 'paper') ||
                         (player_option == 'paper') && (computer_option == 'rock')
    'You lost!'
    end
end
