require_relative 'player'
require_relative 'computer'
require_relative 'game_logic'

class Game

  attr_reader :player, :computer

  @@choices = ["Rock", "Paper", "Scissors"]

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.choices
    @@choices
  end

  def result
    p1 = @player.choice
    ## to stop computer bringing in the random behaviour each time
    comp = @@choices[rand(0..2)]
    game_logic(p1,comp)
  end

  def game_logic(p1, comp)
    if p1 == comp
      return "Draw"
    elsif (p1 == "Rock" && comp == "Scissors")
      return "Computer chose #{comp}. #{@player.name} beats #{@computer.name}"
    elsif (p1 == "Rock" && comp == "Paper")
      return "Computer chose #{comp}. #{@computer.name} beats #{@player.name}"
    elsif (p1 == "Paper" && comp == "Scissors")
      return "Computer chose #{comp}. #{@computer.name} beats #{@player.name}"
    elsif (p1 == "Paper" && comp == "Rock")
      return "Computer chose #{comp}. #{@player.name} beats #{@computer.name}"
    elsif (p1 == "Scissors" && comp == "Paper")
      return "Computer chose #{comp}. #{@player.name} beats #{@computer.name}"
    elsif (p1 == "Scissors" && comp == "Rock")
      return "Computer chose #{comp}. #{@computer.name} beats #{@player.name}"
    end
  end

end
