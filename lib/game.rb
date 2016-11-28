require_relative './player.rb'
class Game

  attr_accessor :player1, :computers_option, :player1choice

  def initialize(player1, computers_option)
    @player1 = player1
    @computers_option = computers_option
  end

  def self.create(player1, computers_option)
    @game = Game.new(player1, computers_option)
  end

  def self.instance
    @game
  end

  def computer_picks
  @computers_option = [:Rock, :Paper, :Scissors].sample
  end

  RULES = {:Rock => :Scissors,
          :Scissors => :Paper,
          :Paper => :Rock}


def winner?
  RULES[self.player1choice] == self.computers_option
end

def draw?
  self.player1choice == self.computers_option
end

def result
  if winner?
    win
  elsif draw?
    draw
  else
    loser
  end
end

def win
  return "You win"
end

def draw
  return "It's a draw"
end

def loser
  return "Oh no! The computer wins this time!"
end

end
