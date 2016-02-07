class Game_ext
  def initialize(players)
    @players = players
    @player = players.first
    @player2 = players.last
  end
  
  def result
    return "a Draw. You both picked #{player.choice}." if draw?
    return "a win for #{player.name}! #{player.choice} beats #{player2.choice}." if player_1_wins?
    "a win for #{player2.name}! #{player2.choice} beats #{player.choice}."
  end

  attr_reader :players, :player, :player2

  private


  def draw?
    calc_winner == "Draw"
  end

  def player_1_wins?
    calc_winner == "player_1_wins"
  end

  def calc_winner
    hash_val = {"Rock" => 1, "Paper" =>  2, "Scissors" =>  3, "Spock"=>  4, "Lizard"=>  5}
    p1 = player.choice
    p2 = player2.choice
    result = (hash_val[p1] - hash_val[p2]) % 5
    return "Draw" if result == 0
    return "player_1_wins" if result.odd?
  end
end