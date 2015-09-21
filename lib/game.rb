class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def challenge
    fail "Both players must choose their weapon" if not_ready_to_challenge?
    winner
  end

  def reset_player_options
    player1.current_selection = nil
    player2.current_selection = nil
  end

  private

  def not_ready_to_challenge?
    player1.current_selection.nil? || player2.current_selection.nil?
  end

  def draw?
    player1.current_selection.name == player2.current_selection.name
  end

  def winner
    return "Draw" if draw?
    return "#{player1.name}" if player1_beats_player2?
    "#{player2.name}"
  end

  def player1_beats_player2?
    player1.current_selection.beats?(player2.current_selection)
  end

end