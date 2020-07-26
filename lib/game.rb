class Game
  attr_reader :players
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def winner_is 
    case 
      when player_1.throw.choice == player_2.throw.choice
        return "TIE"
      when player_1.throw.choice == "rock" && player_2.throw.choice == "scissors" || 
        player_1.throw.choice == "paper" && player_2.throw.choice == "rock" ||
        player_1.throw.choice == "scissors" && player_2.throw.choice == "paper"
        return player_1     
      when player_1.throw.choice == "rock" && player_2.throw.choice == "paper" || 
        player_1.throw.choice == "paper" && player_2.throw.choice == "scissors" || 
        player_1.throw.choice == "scissors" && player_2.throw.choice == "rock"
        return player_2
    end
  end

end
