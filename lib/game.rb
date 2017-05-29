
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

  def fight(player1_weapon, player2_weapon)
    if RULES[player1_weapon.to_sym] == player2_weapon.to_sym
      @scores[:player1] += 1
      next_round
      @players[0].name
    elsif RULES[player2_weapon.to_sym] == player1_weapon.to_sym
      @scores[:player2] += 1
      next_round
      @players[1].name
    else
      draw
    end
  end

  def draw
    'nobody'
  end
end
