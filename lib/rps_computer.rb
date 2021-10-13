class RPSComputer

  attr_reader :result, :computer_move

  def initialize(player_move)
    @player_move = player_move
  end

  def random_move
    @computer_move = ["Rock","Paper","Scissors"].sample
  end

  def rps_result
    random_move
    if @player_move == @computer_move
      @result = "The result is a tie"
    elsif @player_move == "Rock" && @computer_move == "Paper"
      @result = "You lose!"
    elsif @player_move == "Scissors" && @computer_move == "Rock"
      @result = "You lose!"
    elsif @player_move == "Paper" && @computer_move == "Scissors"
      @result = "You lose!"
    else
      @result = "You win!"
    end
  end
end

# rock & rock - TIE
# paper & paper - TIE
# scissors & scissors - TIE
# rock & paper - COMPUTER WIN
# paper & scissors - COMPUTER WIN
# scissors & rock - COMPUTER WIN
# rock & scissors - PLAYER WIN
# scissors & paper - PLAYER WIN
# paper & rock - PLAYER WIN
