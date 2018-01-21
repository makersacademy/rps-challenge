#
class Game
  attr_reader :players, :player1, :player2

  def self.create(player1, player2 = Player.new('Computer'))
    @game = Game.new(player1, player2)
  end

  def self.current_game
    @game
  end

  def initialize(player1, player2 = Player.new('Computer'))
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
  end

  def winner
    win_condition[player1.weapon].include?(player2.weapon) ? player1 : player2
  end

  def win_condition
    rulebook = {
      rock: [:scissors, :lizard],
      paper: [:rock, :spock],
      scissors: [:paper, :lizard],
      spock: [:rock, :scissors],
      lizard: [:spock, :paper]
    }
  end

#   player1
#   player2
#
#   player1 weapon
#   player2 weapon
#
#   player1 weapon > player2 weapon
#
#   result
#
#   def initialize(player1, player2 = Player.new('Computer'))
#
#   end
end
