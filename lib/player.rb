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
    puts "It's a draw"
    elsif @move == 'Paper' && computer_move == 'Paper'
      puts "It's a draw"
    elsif @move == 'Scissors' && computer_move == 'Scissors'
      puts "It's a draw"
    elsif @move == 'Rock' && computer_move == 'Scissors'
      puts "#{@name} Wins"
    elsif @move == 'Paper' && computer_move == 'Rock'
      puts "#{@name} Wins"
    elsif @move == 'Scissors' && computer_move == 'Paper'
      puts "#{@name} Wins"
    elsif @move == 'Rock' && computer_move == 'Paper'
      puts "Computer wins"
    elsif @move == 'Paper' && computer_move == 'Scissors'
      puts "Computer wins"
    elsif @move == 'Scissors' && computer_move == 'Rock'
      puts "Computer wins"
    end
  end
end
