
require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :players, :round
  attr_accessor :scores, :no_of_rounds

  WEAPONS = [:ruby, :paper, :scissors]
  RULES = { :ruby => :scissors, :scissors => :paper, :paper => :ruby }.freeze

  def initialize
    @players = []
    @no_of_rounds = nil
    @round = 1
    @scores = { player1: 0, player2: 0 }
  end

  def create_players(player1, player2 = Computer.new('computer'))
    @players << player1
    @players << player2
  end

  def next_round
    @round += 1 unless @round == @no_of_rounds
  end

  def fight(player_1_weapon, player_2_weapon)
    return players[0].name if RULES[player_1_weapon.to_sym] == player_2_weapon.to_sym
    players[1].name if RULES[player_2_weapon.to_sym] == player_1_weapon.to_sym
  end

  def save_game; end

  def load_game; end
end
