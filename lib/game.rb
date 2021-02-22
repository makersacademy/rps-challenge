class Game

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def calculate_winner

    case @player
    when "rock"
      you_win if @computer == "scissors"
      computer_wins if @computer == "paper"
    when "scissors"
      you_win if @computer == "paper"
      computer_wins if @computer == "rock"
    when "paper"
      you_win if @computer == "rock"
      computer_wins if @computer == "scissors"
    else
      "Computer chose #{@computer} – it's a draw!"
    end
  end

  def computer_wins
    "Computer chose #{@computer} – you lose!"
  end

  def you_win
    "Computer chose #{@computer} – you win!"
  end


end
