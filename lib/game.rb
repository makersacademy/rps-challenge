class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def challenge
    fail "Both players must choose their weapon" if not_ready_to_challenge?
    outcome = winner_string
    reset_player_options
    outcome
  end

  private

  def not_ready_to_challenge?
    player1.current_selection.nil? || player2.current_selection.nil?
  end

  def draw?
    player1.current_selection.class == player2.current_selection.class
  end

  def winner_string
    return "Draw" if draw?
    return "#{player1.name}" if player1_beats_player2?
    "#{player2.name}"
  end

  def player1_beats_player2?
    player1.current_selection.beats?(player2.current_selection)
  end

  def reset_player_options
    player1.current_selection = nil
    player2.current_selection = nil
  end

end