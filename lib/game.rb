require_relative './player.rb'
class Game

  attr_accessor :player1, :computers_option

  def initialize(player1, computers_option)
    @player1 = player1
    @computers_option = computers_option
  end

  def computer_picks
  @computers_option = [:Rock, :Paper, :Scissors].sample
  end

  def paper
    if self.computers_option == :Rock then return "You won!" end
    if self.computers_option == :Paper then return "It's a draw" end
    if self.computers_option == :Scissors then return "Oh no! The computer wins this time!" end
    end

  def scissors
    if self.computers_option == :Paper then return "You won!" end
    if self.computers_option == :Scissors then return "It's a draw" end
    if self.computers_option == :Rock then return "Oh no! The computer wins this time!" end
  end

  def rock
    if self.computers_option == :Scissors then return "You won!" end
    if self.computers_option == :Rock then return "It's a draw" end
    if self.computers_option == :Paper then return "Oh no! The computer wins this time!" end
  end

end
