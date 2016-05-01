

require_relative 'computer'
require_relative 'player'
class Game


   CHOICE=['rock','paper','scissors']

attr_reader :player
attr_reader :winner
attr_reader :computer
  def self.create(player)
    @game = Game.new(player)
  end
  def self.game_in_play
    @game
  end

  def initialize(player, computer_class = Computer)
    @player = player
    @computer = computer_class.new
    @winner = nil
  end

  def rock(choice)
    @winner = "#{@player.name} wins" if choice == "scissors"
    @winner = "computer wins" if choice == "paper"
    @winner = "game is a tie" if choice == "rock"
  end

  def scissors(choice)
    @winner = "#{@player.name} wins" if choice == "paper"
    @winner = "computer wins" if choice == "rock"
    @winner = "game is a tie" if choice == "scissors"
  end

  def paper (choice)
    @winner = "#{@player.name} wins" if choice == "rock"
    @winner = "computer wins" if choice == "scissors"
    @winner = "game is a tie" if choice == "paper"
  end
end