require_relative './computer_player'
require_relative './player'
require_relative './message_generator'

class Game
  attr_reader :p1, :p2, :winner, :loser, :players
  @@game = nil

  RULES = { rock: [:scissors, :lizard],
            paper: [:rock, :spock],
            scissors: [:paper, :lizard],
            lizard: [:paper, :spock],
            spock: [:rock, :scissors] }

  def self.instance
    @@game
  end

  def self.create(player1, player2)
    @@game = Game.new(player1, player2)
  end

  def initialize(player1, player2)
    @p1 = player1
    @p2 = player2
  end

  def number_of_players(num)
    @players = num
  end

  def find_winner
    @p1_move = @p1.move.to_sym
    @p2_move = @p2.move.to_sym
    case
    when @p1_move == @p2_move
      draw
    when RULES[@p2_move].include?(@p1_move)
      winner_loser(@p2, @p1)
    else
      winner_loser(@p1, @p2)
    end
  end

  def draw
    @winner = 'draw'
    @loser = 'draw'
  end

  def winner_loser(winner,loser)
    @winner = winner
    @loser = loser
  end

end
