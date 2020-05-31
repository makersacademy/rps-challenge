require_relative 'winner'

class Game
  # class methods

  def self.create(player_1, player_2, winner = Winner.new)
    @game = Game.new(player_1, player_2, winner)
  end

  def self.instance
    @game
  end

  # instance methods

  def initialize(player_1, player_2, winner = Winner.new)
    @players = [player_1, player_2]
    @winner = winner
  end

  MOVES = [:rock, :paper, :scissors]

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def assign_move(player, move)
    player.move = move
  end

  def result(player)
    case @winner.decide(player_1, player_2)
      when player then :win
      when :draw then :draw
      else :lose
    end
  end
end
