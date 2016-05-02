class Game

  attr_reader :best_of_n, :spock_and_lizard

  def self.create player_1, player_2, spock_and_lizard = false
    @game = Game.new player_1, player_2, spock_and_lizard
  end

  def self.instance
    @game
  end

  PLAYER_1_WINS = [[:rock, :scissors],
                  [:rock, :lizard],
                  [:scissors, :paper],
                  [:scissors, :lizard],
                  [:paper, :rock],
                  [:paper, :spock],
                  [:spock, :rock],
                  [:spock, :scissors],
                  [:lizard, :paper],
                  [:lizard, :spock]]


  def initialize player_1, player_2, spock_and_lizard = false
    @players = [player_1,player_2]
    @best_of_n = 3
    @spock_and_lizard = spock_and_lizard
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end

  def winner
    return nil if tie
    moves = [player_1.gesture, player_2.gesture]
    PLAYER_1_WINS.include?(moves) ? player_1 : player_2
  end

  def allocate_points
    return nil if tie
    winner.add_point
  end

  def overall_winner
    players.detect {|player| player.score > (best_of_n/2)}
  end

  def best_of_plus_2
    @best_of_n += 2
  end

  private
  attr_reader :players
  def tie
    player_1.gesture == player_2.gesture
  end
end
