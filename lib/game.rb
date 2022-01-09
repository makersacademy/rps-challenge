class Game

  attr_reader :player1, :player2
  attr_accessor :move1, :move2

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
  end

  def result(player, computer)
    return "#{player1} is the winner!" if player == 'Rock' && computer == 'Scissor'
    return "#{player1} is the winner!" if player == 'Scissor' && computer == 'Paper'
    return "#{player1} is the winner!" if player == 'Paper' && computer == 'Rock'
    return "It's a DRAW!" if player == computer
    "Sorry, this time #{player2} is the winner."
  end
    
end 
