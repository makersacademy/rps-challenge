class Game

  attr_reader :player1, :player2
  attr_writer :move1, :move2

  def initialize(name1, name2)
    @options = ['Rock', 'Paper', 'Scissor']
    @computer_move
    @player1 = name1
    @player2 = name2

  end

  attr_reader :move1 

  attr_reader :move2 

  def computer_move
    @options.sample
  end

  def result(player, computer)
    return "#{player1} is the winner!" if player == 'Rock' && computer == 'Scissor'
    return "#{player1} is the winner!" if player == 'Scissor' && computer == 'Paper'
    return "#{player1} is the winner!" if player == 'Paper' && computer == 'Rock'
    return "It's a DRAW!" if player == computer
    "Sorry, this time #{player2} is the winner."
  end
    
end 
