require 'singleton'

class Game

  WEAPONS = [:rock, :paper, :scissors]
  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  include Singleton
  attr_reader :player_1, :player_2, :round_winner

  def add_players(players)
    @player_1 = players.first
    @player_2 = players.last
  end

  def select_player_attack(attack)
    @player_1.select_attack(attack)
  end

  def evaluate_result
    @round_winner = find_winner
    update_score unless @round_winner == nil
  end

  private

  def find_winner
    return nil if @player_1.weapon == @player_2.weapon
    return RULES[@player_1.weapon] == @player_2.weapon ? @player_1 : @player_2
  end

  def update_score
    @round_winner.add_win
  end
end
