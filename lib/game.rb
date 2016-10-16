require_relative 'player'
require_relative 'computer'

class Game

  WINNING_MOVE = { rock: [:scissors, :lizard],
                   paper: [:rock, :spock],
                   scissors: [:paper, :lizard],
                   lizard: [:paper, :spock],
                   spock: [:rock, :scissors]  }

  def self.new_game(player)
   @game = Game.new(player)
  end

  def self.instance
   @game
  end

  attr_reader :player

  def initialize(player, computer = Computer.new )
   @player = player
   @computer = computer
  end

  def result?
   @computer.computer_select
   puts @computer.move_choice
   if @player.player_choice == @computer.move_choice
      "Draw"
    elsif WINNING_MOVE[@player.player_choice].include?(@computer.move_choice)
      "You win!"
    else
      "Computer wins!"
    end
  end


end
