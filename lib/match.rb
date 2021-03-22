class Match

  attr_reader :rounds, :winner

  def initialize(number_of_rounds, number_of_bouts, players)
    @@players = players
    @rounds = []
    number_of_rounds.times { @rounds << Round.new(number_of_bouts) }
  end

  def players
    @@players
  end

  def who_won(rounds = @rounds)
    player_one_wins = rounds.select { |round| round.winner == @@players.first }.length
    player_two_wins = rounds.select { |round| round.winner == @@players.last }.length
    if player_one_wins == player_two_wins
      "Tied"
    elsif player_one_wins > player_two_wins
      @@players.first
    else
      @@players.last
    end
  end

end
