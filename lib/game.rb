class Game
  attr_reader :players, :wld
  # RULES = {rock: :scissors, paper: :rock, scissors: :paper}
  
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @wld = { :p1 => 0, :p2 => 0, :draw => 0 }
    # current_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def win_lose(player1, player2)
    if player1 == "rock" && player2 == "scissors" 
      @wld[:p1] += 1
      " Rock beats Scissors, You Win ! "
    elsif player1 == "scissors" && player2 == "paper" 
      @wld[:p1] += 1
      " Scissors beats Paper, You Win ! "
    elsif player1 == "paper" && player2 == "rock"
      @wld[:p1] += 1
      " Paper beats Rock, You win ! "
      # player2 win
    elsif player2 == "rock" && player1 == "scissors" 
      @wld[:p2] += 1
      "Rock beats Scissors, You Lose !"
    elsif player2 == "scissors" && player1 == "paper"
      @wld[:p2] += 1
      "Scissors beats Paper, You Lose !"
    elsif player2 == "paper" && player1 == "rock"
      @wld[:p2] += 1
      "Paper beats Rock, You Lose !"
      # draw
    else 
      @wld[:draw] += 1
      "It's a draw"
    end
  end

end
