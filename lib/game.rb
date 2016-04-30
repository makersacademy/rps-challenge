

require_relative 'computer'
require_relative 'player'
class Game


   CHOICE=['rock','paper','scissors']
attr_reader :result
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
    @result = nil
    @winner = nil
  end

  def rock(choice)
    @result = true if choice == "scissors"
    @result = false if choice == "paper"
    @result = nil if choice == "rock"
  end


  def outcome
    @winner = "#{@player.name} wins" if winner?
    @winner = "computer wins" if loser?
    @winner = "game is a tie" if draw?
  end

  private

  def winner?
    @result == true
  end
  def loser?
    @result == false
  end
  def draw?
    @result == nil
  end


end