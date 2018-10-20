class Game

  attr_reader :player_1_move, :player_2_move, :winner

  def initialize
    @player_1_move
    @player_2_move
    @moves = [:rock, :paper, :scissors]
    @rules = { :paper => :rock, :rock => :scissors, :scissors => :paper }
  end

  def player_selection(selection)
    @player_1_move = selection
    computer_selection
    play(@player_1_move, @player_2_move)
  end

  def computer_selection
    @player_2_move = @moves.sample
  end

  def play(p_1, p_2)
    winner = nil
    winner = 'player_1' if @rules[p_1] == p_2
    winner = 'player_2' if @rules[p_2] == p_1
    return winner
  end

  def winning_message(winner)
    return "It's a draw!" if winner.nil?
    return "#{winner} won the round"
  end
end
