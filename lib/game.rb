class Game

  def initialize(player)
    @player = player
  end

  def computer_move
    ["Paper", "Rock", "Scissors"].sample
  end

  def winner(playermove, computermove)
    if playermove == computermove
      "...there is no winner, it's a draw!"
    else
      case playermove
        when "Rock"
          computermove == "Scissors" ? @player : "The Computer!"
        when "Scissors"
          computermove == "Rock" ? "The Computer!" : @player
        when "Paper"
          computermove == "Rock" ? @player : "The Computer!"
      end
    end
  end

end
