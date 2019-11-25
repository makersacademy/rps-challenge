class Game
  attr_reader :p2_move

  def initialize(p2_move)
   @p2_move = ["Rock", "Paper", "Scissors"].sample
  end


  def result
    if @p1_move == "rock" && @p2_move == "scissors"
      puts "Player 1 wins"
    elsif @p1_move == "paper" && @p2_move == "rock"
      puts "Player 1 wins"
    elsif @p1_move == "scissors" && @p2_move == "paper"
      puts "Player 1 wins"
    elsif @p1_move == @p2_move
      puts "It's a draw"
    else
     puts "Player 2 wins"
    end
  end

  def self_instance
    @game
  end
end
