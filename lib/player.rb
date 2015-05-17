class Player
  def initialize
    @turn = []
    @winner = false
    @round_wins = 0
  end

  def take_a_turn turn
    @turn << turn
  end

  def random_selection
    @turn << ["Rock", "Paper", "Scissors", "Lizard", "Spock"].sample
  end

  def winner?
    @winner
  end

  def wins
    @winner = true if @round_wins >=2
  end

  def add_round_win
    @round_wins += 1
  end

  #ACCESSORS
  def check_turn
    @turn.last
  end

  def check_round_wins
    @round_wins
  end
end