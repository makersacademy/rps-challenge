class Game

require_relative 'player'
require_relative 'computer'

  attr_reader :player, :computer, :winner

    def initialize(player, computer)
      @player = player
      @computer = computer
      @winner = nil
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
      # @player_weapon = player_choice
      computer_choice = computer.computer_play
      if player_choice == computer_choice
        @winner = "It's a draw!"
      elsif @winning_combos[player_choice] == computer_choice
        @winner = "You win!"
      else
        @winner = "You lose!"
      end
      return @winner
    end

end
