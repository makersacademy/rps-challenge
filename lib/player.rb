class Player
  attr_reader :name, :move

  def initialize(name, move)
    @name = name
    @move = move
  end

  def computer_move
    ["Rock", "Paper", "Scissors"].sample
  end

  def result
    if @move == 'Rock' && computer_move == 'Rock'
    "It's a draw"
    elsif @move == 'Paper' && computer_move == 'Paper'
      "It's a draw"
    elsif @move == 'Scissors' && computer_move == 'Scissors'
      "It's a draw"
    elsif @move == 'Rock' && computer_move == 'Scissors'
      "#{@name} Wins"
    elsif @move == 'Paper' && computer_move == 'Rock'
      "#{@name} Wins"
    elsif @move == 'Scissors' && computer_move == 'Paper'
      "#{@name} Wins"
    elsif @move == 'Rock' && computer_move == 'Paper'
      "Computer wins"
    elsif @move == 'Paper' && computer_move == 'Scissors'
      "Computer wins"
    elsif @move == 'Scissors' && computer_move == 'Rock'
      "Computer wins"
    end
  end
end
