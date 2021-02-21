class Game

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def calculate_winner
    if @player == @computer
      "Computer chose #{@computer} – it's a draw!"
    elsif @player == 'scissors' && @computer == 'rock'
      "Computer chose #{@computer} – you lose!"
    end
  end


end
