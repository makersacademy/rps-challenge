require_relative "messages"

class Winner
  include Messages

  PLAYER1_WIN_COMBOS = {
    rock: [:scissors, :lizard],
    paper: [:rock, :spock],
    scissors: [:paper, :lizard],
    lizard: [:paper, :spock],
    spock: [:rock, :scissors]
  }

  def initialize(players)
    @players = players
    convert_to_sym
  end

  def determine
    PLAYER1_WIN_COMBOS[@player1_move].each do |move|
      if @player2_move == move
        return player1_won
      end
    end
    return draw if @player1_move == @player2_move
    return player2_won
  end

  private

  def convert_to_sym
    player1_move, player2_move = @players.first.move, @players.last.move
    @player1_move = player1_move.to_sym unless player1_move.nil?
    @player2_move = player2_move.to_sym unless player2_move.nil?
  end

end
