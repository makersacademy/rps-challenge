require_relative 'computer'
require_relative 'player'

class Game
  MOVES   = [:rock, :paper, :scissors, :spock, :lizard]
  P1_WIN  = [[:scissors, :paper], [:paper, :rock], [:rock, :lizard],
            [:lizard, :spock], [:spock, :scissors], [:scissors, :lizard],
            [:lizard, :paper], [:paper, :spock], [:spock, :rock],
            [:rock, :scissors]]
  P2_WIN  = P1_WIN.map { |combo| combo.reverse }

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
    self.winner = equal?(play) ? :tie : return_winner(play)
  end


  private
  attr_writer :on_turn, :winner

  def equal?(array)
    array.uniq.size == 1
  end

  # returns p1 or p2
  def return_winner(combo)
    return player1 if Game::P1_WIN.include?(combo)
    return player2 if Game::P2_WIN.include?(combo)
  end

  def opposite_of(player)
    players.detect { |choice| choice != player }
  end
end
