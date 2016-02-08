class Game
  def initialize(players)
    @players = players
    @player1 = players.first
    @player2 = players.last
  end
  
  def result
    return "a draw. You both picked #{player1.choice}." if draw?
    return "a win for #{player1.name}! #{player1.choice} beats #{player2.choice}." if player_1_wins?
    "a win for #{player2.name}! #{player2.choice} beats #{player1.choice}."
  end

  attr_reader :players, :player1, :player2

  private

  attr_reader :hand_hash

  def draw?
    calc_winner == "draw"
  end

  def player_1_wins?
    calc_winner == "player_1_wins"
  end

  def calc_winner
    result = (hand_hash[player1.choice].to_i - hand_hash[player2.choice].to_i) % 5
    return "draw" if result == 0
    return "player_1_wins" if result.odd?
  end

  def hand_hash
    {"Rock" => 1, "Paper" =>  2, "Scissors" =>  3, "Spock"=>  4, "Lizard"=>  5}
  end

end