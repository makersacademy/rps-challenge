require_relative "messages"

class Winner
  include Messages

  PLAYER1_WIN_COMBOS = {
    'rock' => ['scissors', 'lizard'],
    'paper' => ['rock', 'spock'],
    'scissors' => ['paper', 'lizard'],
    'lizard' => ['paper', 'spock'],
    'spock' => ['rock', 'scissors']
  }

  def initialize(players)
    @players = players
    @player1_move = @players.first.move
    @player2_move = @players.last.move
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
end
