require_relative 'Item'

class Game

  attr_reader :player_1, :player_2

  MOVES_HASH = {  rock: Item.new(:rock, "Rock", [:scissors]),
                  paper: Item.new(:paper, "Paper", [:rock]),
                  scissors: Item.new(:scissors, "Scissors", [:scissors]) }

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def winner(player_1 = @player_1, player_2 = @player_2)
    @player_1_item = MOVES_HASH[player_1.move]
    @player_2_item = MOVES_HASH[player_2.move]
    return @player_1 if @player_1_item.can_beat?(@player_2_item.symbol)
    return @player_2 if @player_2_item.can_beat?(@player_1_item.symbol)
    :draw
  end

  def increase_winner_score
    return if winner == :draw
    winner.increase_score
  end

  def self.possible_moves
    MOVES_HASH.map { |key, _value| key }
  end

end
