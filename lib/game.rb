class Game

require_relative 'player'
require_relative 'computer'

  attr_reader :player, :computer
  WIN = "You won the game!"
  LOSE = "You lose the game!"
  DRAW = "It's a draw!"

    def initialize(player, computer)
      @player = player
      @computer = computer
      @winning_combos = {
          'rock' => 'scissors',
          'scissors' => 'paper',
          'paper' => 'rock'
      }
    end

    def self.create(player, computer)
      @game = Game.new(player, computer)
    end

    def self.instance
      @game ||= Game.new
    end

    def play(player_choice)
      computer_choice = computer.computer_play
      return DRAW if player_choice == computer_choice
      @winning_combos[player_choice] == computer_choice ? WIN : LOSE
    end

end
