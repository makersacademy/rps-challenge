class Game

attr_reader :player_1_name, :player_1_move, :computer

  def initialize(player_1_name, player_1_move)
    @player_1_name = player_1_name
    @player_1_move = player_1_move
  end

  def computer_move
    ["Rock", "Paper", "Scissors"].sample
  end

  def play
    @computer = computer_move
    return "Draw!" if player_1_move == computer
    return "You win!" if player_1_move == "Scissors" && computer == "Paper"
    return "You win!" if player_1_move == "Paper" && computer == "Rock"
    return "You win!" if player_1_move == "Rock" && computer == "Scissors"
    "Computer wins!"
    end
end
