class Game

  attr_reader :player1, :computer_player

  def initialize(player1, computer_player)
    @player1= player1
    @computer_player = computer_player
  end

  def win
    if @player1 == @computer_player
       "Aaaaaand it's... a draw *crickets*"
    elsif @player1 == "paper" && @computer_player == "rock"
       "Congratulations, you won!"
    elsif @player1 == "rock" && @computer_player == "scissors"
       "Congratulations, you won!"
    elsif @player1 == "scissors" && @computer_player == "paper"
       "Congratulations, you won!"
    else
       "Oh sorry, computer won"
    end
  end
end
