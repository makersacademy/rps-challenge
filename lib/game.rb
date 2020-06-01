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

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2, winner = Winner.new)
    @player_1 = player_1
    @player_2 = player_2
    @winner = winner
    @players = [player_1, player_2]
  end

  MOVES = [:rock, :paper, :scissors]

  def playing_as
    @players.first
  end

  def playing_against
    @players.last
  end

  def switch_players
    @players.reverse!
  end

  def assign_move(player, move)
    player.move = move
  end

  def winner
    @winner.decide(player_1, player_2)
  end

  def loser
    if @winner.decide(player_1, player_2) == :draw
      :draw
    else
      (@players - [@winner.decide(player_1, player_2)]).first
    end
  end

  def stage
    playing_as == player_2 ? '/play-multi' : '/result-multi'
  end

  def result(player)
    case @winner.decide(player_1, player_2)
      when player then :win
      when :draw then :draw
      else :lose
    end
  end
end
