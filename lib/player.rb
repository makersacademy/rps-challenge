class Player

  def initialize
    @points = 0
    @won = nil
    @has_played = false
    @in_game = false
  end

  def join_game
    @in_game = true
  end

  def in_game?
    @in_game
  end

  def play what_to_play
    @played = what_to_play
    @has_played = true
  end

  # This method is stubbed in feature tests to control randomness
  def autoplay
    @played = [:Rock, :Paper, :Scissors].select
  end

  def new_turn
    @has_played = false
  end

  def has_played?
    @has_played
  end

  def played
    @played
  end

  def points
    @points
  end

  def add_point
    @points += 1
  end

  def won_game?
    @won
  end

  def has_won
    @won = true
  end

  def has_lost
    @won = false
  end

end
