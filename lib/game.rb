require_relative './computer'
class Game
attr_accessor :name, :item, :computer_play

  def initialize(name, item = nil, computer_play = Computer.play)
    @name = name
    @item = item
    @computer_play = computer_play
  end

  def win?
    case [@item, @computer_play] 
    when ["Rock", "Rock"], ["Paper", "Paper"], ["Scissors", "Scissors"]
      "Draw"
    when ["Rock", "Scissors"], ["Paper", "Rock"], ["Scissors", "Paper"]
      "You win!"
    when ["Rock", "Paper"], ["Paper", "Scissors"], ["Scissors", "Rock"]
      "You lose"
    end
  end

 
end