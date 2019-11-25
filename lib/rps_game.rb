class RPSGame

  attr_reader :p2_move, :p1_move, :p1_name

# name wasn't displaying in the browser because it wasn't in parameter list ()
  def initialize(p1_move)
    @p2_move = ["Rock", "Paper", "Scissors"].sample
    @p1_move = p1_move
    @p1_name = p1_name
  end


  def results
    if @p1_move == "scissors" && @p2_move == "paper"
      puts "Player 1 wins"
    elsif @p1_move == "rock" && @p2_move == "scissors"
      puts "Player 1 wins"
    elsif @p1_move == "paper" && @p2_move == "rock"
      puts "Player 1 wins"
    elsif @p1_move == @p2_move
      puts "It's a draw"
    else
      puts "Player 2 wins"
    end
  end
end
