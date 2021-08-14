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

  def play
    @player_1.r_p_s
    @player_2.r_p_s
    calculate_result
  end

  def calculate_result
    if @player_1.value == @player_2.value
      @tie = true
    elsif @player_1.value == @player_2.value + 1 || @player_1.value + 2 == @player_2.value
      set_winner_loser(@player_1, @player_2)
    else
      set_winner_loser(@player_2, @player_1)
    end
  end

  def set_winner_loser(player, opponent)
    @winner = player
    @loser = opponent
  end

  def reset_winner_loser
    @winner = nil
    @loser = nil
  end

end
