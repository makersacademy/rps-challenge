class Game
  attr_reader :players, :turn

  SIGNS = [:rock, :paper, :scissors, :spock, :lizard]

  def self.create(*args)
    @game = self.new(*args)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @players = [player1, player2]
    @turn = 0
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def change_turn
    @turn += 1
    raise('Both players have played') if @turn >= 2
  end

# FROM WIKIPEDIA: For instance, rock-paper-scissors-Spock-lizard
# may be modeled as a game in which each player picks a number from one to five.
# Subtract the number chosen by player two from the number chosen by player one,
# and then take the remainder modulo 5 of the result. Player one is the victor if
# the difference is one or three, and player two is the victor if the difference
# is two or four. If the difference is zero, the game is a tie.
  def winner
    p1 = SIGNS.index(player1.pick) + 1
    p2 = SIGNS.index(player2.pick) + 1
    case (p1 - p2) % 5
      when 1, 3
        player1.name
      when 2,4
        player2.name
      when 0
        :tie
      else
        raise("Can't find a winner: unexpected results!")
    end
  end

  def cpu_picker
    SIGNS.sample
  end
end
