class Game

attr_reader :player_1_name, :player_attack, :computer_move

  def initialize(player_1_name, player_attack)
    @player_1_name = player_1_name
    @player_attack = player_attack
  end

  def move
    [ "Rock", "Paper", "Scissors"].sample
  end

  def play
    @computer_move = move
    return "Draw!" if player_attack == computer_move
    return "You win!" if player_attack == "Rock" && computer_move == "Scissors"
    return "You win!" if player_attack == "Paper" && computer_move == "Rock"
    return "You win!" if player_attack == "Scissors" && computer_move == "Paper"
    "You lose!"
  end

end
