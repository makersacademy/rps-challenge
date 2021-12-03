class ComputerMove
  attr_reader :computer_move

  def initialize
    @computer_move = ["Rock", "Paper", "Scissors"].sample
  end
end


# p1_id = move.index(p1)
# p2_id = move.index(p2)

# if p1_id != p2_id 
#   puts (p1_id == (p2_id + 1) % 3) ? 'Player 1 wins' : 'Player 2 wins'
# else
#   puts "It's a draw"
# end