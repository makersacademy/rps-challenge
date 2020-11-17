class Game

attr_reader :player_1_name, :player_1_move, :computer_move

  def initialize(player_1_name, player_1_move)
    @player_1_name = player_1_name
    @player_1_move = player_1_move
  end

  def computer
    ["Rock", "Paper", "Scissors"].sample
  end

  def play
    @computer_move = computer
    return "Draw!" if player_1_move == computer_move
    return "You win!" if player_1_move == "Scissors" && computer_move == "Paper"
    return "You win!" if player_1_move == "Paper" && computer_move == "Rock"
    return "You win!" if player_1_move == "Rock" && computer_move == "Scissors"
    "Computer wins!"
    end
end
