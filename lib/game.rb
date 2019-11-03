class Game

  def initialize(player)
    @player = player
  end

  def computer_move
    computermove = ["Paper", "Rock", "Scissors"].sample
  end

  def winner(playermove, computermove)
    if playermove == "Rock"
      if computermove == "Rock"
        "...there is no winner, it's a draw!"
      elsif computermove == "Scissors"
        @player
      else #(computer move is Paper)
        "The Computer!"
      end
    elsif playermove == "Scissors"
      if computermove == "Rock"
        "The Computer!"
      elsif computermove == "Scissors"
        "...there is no winner, it's a draw!"
      else #(computer move is Paper)
        @player
      end
    else #(player move is Paper)
      if computermove == "Rock"
        @player
      elsif computermove == "Scissors"
        "The Computer!"
      else #(computer move is Paper)
        "...there is no winner, it's a draw!"
      end
    end
  end

end
