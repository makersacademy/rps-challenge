require_relative 'player'
require_relative 'computer'

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
    comp = @computer.auto_selection
    game_logic(p1, comp)
  end

  def game_logic(p1, comp)
    if p1 == comp
      "Draw"
    elsif (p1 == "Rock" && comp == "Scissors")
      "#{p1} beats #{comp}"
    elsif (p1 == "Rock" && comp == "Paper")
      "#{p1} beats #{comp}"
    elsif (p1 == "Paper" && comp == "Scissors")
      "#{comp} beats #{p1}"
    elsif (p1 == "Paper" && comp == "Rock")
      "#{comp} beats #{p1}"
    elsif (p1 == "Scissors" && comp == "Paper")
      "#{p1} beats #{comp}"
    elsif (p1 == "Scissors" && comp == "Rock")
      "#{comp} beats #{p1}"
    end
  end

end
