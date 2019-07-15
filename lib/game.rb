class Game

  attr_reader :opponent_rps, :message, :player

  def initialize(player)
    @player = player
  end

  def random_opponent_rps
    @opponent_rps = ["Rock","Paper","Scissors"].sample
  end

  def game_summary(player)
    if player.rps_choice == "Rock" && @opponent_rps == "Scissors"
      @message = "Well done - you win!!"
    elsif player.rps_choice == "Rock" && @opponent_rps == "Paper"
      @message = "Sorry - you lose!!"
    elsif player.rps_choice == "Rock" && @opponent_rps == "Rock"
      @message = "It's a draw - play again!!"
    elsif player.rps_choice == "Paper" && @opponent_rps == "Rock"
      @message = "Well done - you win!!"
    elsif player.rps_choice == "Paper" && @opponent_rps == "Scissors"
      @message = "Sorry - you lose!!"
    elsif player.rps_choice == "Paper" && @opponent_rps == "Paper"
      @message = "It's a draw - play again!!"
    elsif player.rps_choice == "Scissors" && @opponent_rps == "Paper"
      @message = "Well done - you win!!"
    elsif player.rps_choice == "Scissors" && @opponent_rps == "Rock"
      @message = "Sorry - you lose!!"
    elsif player.rps_choice == "Scissors" && @opponent_rps == "Scissors"
      @message = "It's a draw - play again!!"
    end
  end

end
