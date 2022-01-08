class Game

  def initialize(player:, computer:)
    @player_move = player
    @computer_move = computer
  end

  def winner
    draw if @player_move == @computer_move 
    case @player_move
    when "rock"
      @computer_move == "scissors" ? you_win : computer_wins
    when "scissors"
      @computer_move == "paper" ? you_win : computer_wins
    when "paper"
      @computer_move == "rock" ? you_win : computer_wins
    end
  end

  def computer_wins
    "Computer chose #{@computer_move} – you lose!"
  end

  def you_win
    "Computer chose #{@computer_move} – you win!"
  end

  def draw
    "Computer chose #{@computer_move} – it's a draw!"
  end


end

