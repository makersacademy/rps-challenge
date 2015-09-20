class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def challenge
    fail "Both players must choose their weapon" if not_ready_to_challenge?
    return "Same choice, draw." if draw?
    "#{winner.name} wins the game!"
  end

  private

  def not_ready_to_challenge?
    player1.current_selection.nil? || player2.current_selection.nil?
  end

  def draw?
    player1.current_selection == player2.current_selection
  end

  def winner
    return player1 if player1.current_selection.beats?(player2.current_selection)
    player2
  end

end