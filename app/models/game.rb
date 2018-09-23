require_relative 'computer'
require_relative 'player'

class Game
  MOVES   = [:rock, :paper, :scissors]
  P1_WIN  = [[:rock, :scissors], [:scissors, :paper], [:paper, :rock]]

  attr_reader :player1, :player2, :players, :on_turn, :winner

  def initialize(player1, player2)
    @player1  = player1
    @player2  = player2
    @players  = [@player1, @player2]
    @on_turn  = @player1
  end

  def multiplayer?
    !player2.computer?
  end

  def switch
    self.on_turn = opposite_of(on_turn)
  end

  def loser
    opposite_of(winner)
  end

  def tie?
    self.winner == :tie
  end

  def make_move(choices)
    players.each_with_index do |player, index|
      if player.computer?
        player.move = Game::MOVES
      else
        player.move = (choices[index])
      end
    end
  end

  def calculate_winner
    play = [player1.move, player2.move]
    if play[0] == play[1]
      self.winner = :tie
    elsif Game::P1_WIN.include?(play)
      self.winner = player1
    else
      self.winner = player2
    end
  end

  private
  attr_writer :on_turn, :winner

  def opposite_of(player)
    players.detect { |choice| choice != player }
  end
end
