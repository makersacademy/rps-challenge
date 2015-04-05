class Turns
  attr_reader :tally
  attr_accessor :record_play, :player_1, :player_2
  def initialize
    @tally = { tally: 0 }
    @wins = { player1: 0, player2: 0 }
  end

  def record_play
    @tally[:tally] += 1
  end

  def player_1
    @wins[:player1] += 1
  end

  def player_2
    @wins[:player2] += 1
  end
end