class Game

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def calculate_winner

    case @player
    when "rock"
      if @computer == "scissors"
        you_win
      elsif @computer == "paper"
        computer_wins
      else
        draw
      end
    when "scissors"
      if @computer == "paper"
        you_win
      elsif @computer == "rock"
        computer_wins
      else
        draw
      end
    when "paper"
      if @computer == "rock"
        you_win
      elsif @computer == "scissors"
        computer_wins
      else
        draw
      end
    end
  end

  def computer_wins
    "Computer chose #{@computer} – you lose!"
  end

  def you_win
    "Computer chose #{@computer} – you win!"
  end

  def draw
    "Computer chose #{@computer} – it's a draw!"
  end

end
