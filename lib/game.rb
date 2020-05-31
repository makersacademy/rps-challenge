class Game

  attr_reader :player1, :player2, :player_2_move

  def initialize(player1, player2 = "Computer")
    @win = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }
    @player1 = player1
    @player2 = player2
  end

  def result_string(player_move, player_2_move = random_move)
    who = result(player_move, player_2_move)
    return "draw" if who == "draw"
    return "#{player1} won" if who == "player1"
    return "#{player2} won" if who == "player2"
  end

  private

  def random_move
    ["Rock", "Paper", "Scissors"].sample
  end

  def result(player_move, player_2_move = random_move)
    @player_2_move = player_2_move
    @player_2_move = random_move unless @player_2_move
    win = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }
    return "draw" if player_move == @player_2_move
    return "player1" if win[player_move] == @player_2_move
    return "player2" if win[@player_2_move] == player_move
  end
  
end
