class Game

  attr_reader :player_1_move, :player_2_move, :winner

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @moves = [:rock, :paper, :scissors]
    @rules = { :paper => :rock, :rock => :scissors, :scissors => :paper }
  end

  def player_selection(selection, p2_selection = computer_selection)
    @player_1_move = selection
    @player_2_move = p2_selection
    play(@player_1_move, @player_2_move)
  end

  def computer_selection
    @moves.sample
  end

  def play(p_1, p_2)
    winner = nil
    winner = @player_1.name if @rules[p_1] == p_2
    winner = @player_2.name if @rules[p_2] == p_1
    return winner
  end

  def winning_message(winner)
    # binding.pry
    return "" if @player_1_move.nil?
    return "It's a draw!" if winner.nil?
    return "#{winner} won the round"
  end

  def choice_message
    return ''  if @player_1_move.nil?
    "You selected #{@player_1_move}, your opponent selected #{@player_2_move}."
  end
end
