class Game
  attr_reader :player_1, :player_2, :player_1_move, :player_2_move

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2

  end

  def player_1_move(weapon)
    @player_1.move(weapon)
  end

  def player_2_move
    ['rock','paper','scissors'].sample
  end

  def player_wins
    "Congratulations #{@player_1.name}, you win!"
  end

  def comp_wins
    "Ahh unlucky the #{@player_2.name} beat you!"
  end

  def winner(player_1_move, player_2_move)
      "You drew, try again" if player_1_move == player_2_move
  	case player_2_move
  	when "rock"
  	     player_wins unless player_1_move == "scissors"
  	when "paper"
  	     player_wins unless player_1_move == "rock"
  	when "scissors"
  	     player_wins unless player_1_move == "paper"
  	end
  	     comp_wins
  end
end
