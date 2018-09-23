class MultiplayerGame
  attr_reader :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def players
    [player1, player2]
  end

  def flip_coin
    @first_player = players.sample
  end

  def second_player
    @first_player == player1 ? player2 : player1
  end

  def decision(player_move, computer_move)
    if player_move == "Rock" && computer_move == "Paper"
      "#{finale(second_player)} is the RPS Champion of #{Date.today.year}!"
    elsif player_move == "Rock" && computer_move == "Rock"
      "It's a tie!"
    elsif player_move == "Rock" && computer_move == "Scissors"
      "#{finale(@first_player)} is the RPS Champion of #{Date.today.year}!"
    elsif player_move == "Paper" && computer_move == "Scissors"
      "#{finale(second_player)} is the RPS Champion of #{Date.today.year}!"
    elsif player_move == "Paper" && computer_move == "Paper"
      "It's a tie!"
    elsif player_move == "Paper" && computer_move == "Rock"
      "#{finale(@first_player)} is the RPS Champion of #{Date.today.year}!"
    elsif player_move == "Scissors" && computer_move == "Rock"
      "#{finale(second_player)} is the RPS Champion of #{Date.today.year}!"
    elsif player_move == "Scissors" && computer_move == "Scissors"
      "It's a tie!"
    else 
      "#{finale(@first_player)} is the RPS Champion of #{Date.today.year}!"
    end
  end

  private
  def finale(victor)
    "#{victor.name.capitalize}"
  end
end
