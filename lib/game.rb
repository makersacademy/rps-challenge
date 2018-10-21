class Game

  attr_reader :player_1_move, :player_2_move, :winner

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @rules = { :paper => :rock, :rock => :scissors, :scissors => :paper }
  end

  def player_selection(selection, p2_selection = computer_selection)
    @player_1_move = selection
    @player_2_move = p2_selection
    play(@player_1_move, @player_2_move)
  end

  def computer_selection
    [:rock, :paper, :scissors].sample
  end

  def play(p_1, p_2)
    winner = nil
    winner = @player_1.name if @rules[p_1] == p_2
    winner = @player_2.name if @rules[p_2] == p_1
    return winner
  end

  def winning_message(winner)
    return "" if chosen?
    return "It's a draw!" if winner.nil?
    return "#{winner} won the round"
  end

  def choice_message
    return ''  if chosen?
    "You selected #{@player_1_move}, your opponent selected #{@player_2_move}."
  end

  def chosen?
    @player_1_move.nil? || @player_2_move.nil?
  end

  def welcome_message
    return "Welcome, #{@player_1.name}!" if @player_2.automated
    "Welcome, #{@player_1.name} and #{@player_2.name}!"
  end
    
end
