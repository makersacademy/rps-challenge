require_relative './computer'
class Game
  attr_accessor :name, :item, :computer_play

  def initialize(name, item = nil, computer_play = Computer.play)
    @name = name
    @item = item
    @computer_play = computer_play
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def win?
    case [@item, @computer_play] 
    when ["Rock", "Rock"], ["Paper", "Paper"], ["Scissors", "Scissors"], ["Lizard", "Lizard"], ["Spock", "Spock"]
      
      "Draw"

    when ["Spock", "Scissors"], ["Spock", "Rock"], ["Rock", "Scissors"], ["Rock", "Lizard"], ["Paper", "Rock"], ["Paper", "Spock"], ["Scissors", "Paper"], ["Scissors", "Lizard"], ["Lizard", "Paper"], ["Lizard","Spock"]
      
      
      "You win! #{@item} beats #{@computer_play}"

    when ["Rock", "Paper"], ["Rock", "Spock"], ["Paper", "Scissors"], ["Paper", "Lizard"], ["Scissors", "Rock"], ["Scissors", "Spock"], ["Lizard", "Rock"], ["Lizard", "Scissors"], ["Spock", "Paper"], ["Spock", "Lizard"]
     
      "You lose, #{@computer_play} beats #{@item}" 
   
    end
  end 
end
