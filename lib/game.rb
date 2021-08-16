require './lib/player.rb'
class Game

  attr_reader :player_1, :player_2, :stored_game, :winner, :loser

  def initialize(player_1_class:, player_2_class:)
    @player_1 = player_1_class
    @player_2 = player_2_class
    @winner = nil
    @loser = nil
    @stored_game
  end

  def self.game(player_1, player_2)
    @stored_game = Game.new(player_1_class: player_1, player_2_class: player_2)
  end

  def self.game_instance
    @stored_game
  end

  def calculate_result

    if @player_1.hand == @player_2.hand
      reset_winner_loser
    elsif @player_1.beats == @player_2.hand
      set_winner_loser(@player_1, @player_2)
    else
      set_winner_loser(@player_2, @player_1)
    end
    reset_winner_loser
  end
  
  def reset_winner_loser
    @winner = nil
    @loser = nil
  end

  def set_winner_loser(player, opponent)
    @winner = player
    @loser = opponent
  end

  def player_1_choose(hand)
    @player_1.choose(hand)
  end

  def player_2_choose(hand)
    @player_2.choose(hand)
  end

end
