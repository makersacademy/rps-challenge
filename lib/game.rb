class Game

  def self.create player_name
    @game = Game.new player_name
  end

  def self.last
    @game
  end

  def initialize player_name
    @player_name = player_name
    @moves = [:rock, :paper, :scissors]
  end

  attr_reader :player_move, :opponent_move

  def player_name
    @player_name.clone
  end

  def player_move= move
    @player_move = move.to_sym
  end

  def set_opponent_move
    @opponent_move = @moves.sample
  end

  def result
    return :draw if draw?
    return :win if player_wins?
    :lose
  end

  private
  def draw?
    player_move == opponent_move
  end

  def player_wins?
    (@moves.index(player_move) - 1) % 3 == @moves.index(opponent_move)
  end

end

