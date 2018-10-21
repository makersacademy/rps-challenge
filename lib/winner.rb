require_relative "messages"

class Winner
  include Messages

  WIN_COMBOS = [[:rock, :scissors], [:paper, :rock], [:scissors, :paper], [:scissors, :lizard], [:rock, :lizard], [:lizard, :paper], [:paper, :spock], [:lizard, :spock], [:spock, :rock], [:spock, :scissors]]

  def initialize(players)
    @players = players
    convert_to_sym
  end

  def determine
    WIN_COMBOS.each do |combo|
      if combo[0] == @player1_move && combo[1] == @player2_move
        return player1_won
      end
    end
    return draw if @player1_move == @player2_move
    return player2_won
  end

  private

  def convert_to_sym
    player1_move = @players.move1
    @player1_move = player1_move.to_sym unless player1_move.nil?
    player2_move = @players.move2
    @player2_move = player2_move.to_sym unless player2_move.nil?
  end

end
