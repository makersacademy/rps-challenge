require_relative 'computer'

class Game

  # ::???::
  #
  # What should be private?
  # Not just in this class but in all classes of this app.
  #

  attr_reader :player, :computer, :game

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

  def winner
    if @player.weapon == "rock" && @computer.weapon == "scissors"
      @player.name
    elsif @computer.weapon == "rock" && @player.weapon == "scissors"
      "Computer (which is me)"
    elsif @player.weapon == "scissors" && @computer.weapon == "paper"
      @player.name
    elsif @computer.weapon == "scissors" && @player.weapon == "paper"
      "Computer (which is me)"
    elsif @player.weapon == "paper" && @computer.weapon == "rock"
      @player.name
    elsif @computer.weapon == "paper" && @player.weapon == "rock"
      "Computer (which is me)"
    elsif @computer.weapon == "paper" && @player.weapon == "paper"
      "No one"
    elsif @computer.weapon == "scissors" && @player.weapon == "scissors"
      "No one"
    elsif @computer.weapon == "rock" && @player.weapon == "rock"
      "No one"
    end
  end

end
