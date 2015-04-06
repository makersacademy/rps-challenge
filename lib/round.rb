require 'actions'

class Round
  include Actions

  def initialize player1_hash, player2_hash
    @player1_name = player1_hash[:name]
    @player1_action = player1_hash[:action]
    @player2_name = player2_hash[:name]
    @player2_action = player2_hash[:action]
  end

  def winner
    return @player1_name if @player1_action == winning_action
    return @player2_name if @player2_action == winning_action
    nil
  end

  def winning_action
    super @player1_action, @player2_action
  end
end
