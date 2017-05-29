
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

  def fight(player1_weapon, player2_weapon)
    if compare(player1_weapon, player2_weapon)
      victory(1)
    elsif compare(player2_weapon, player1_weapon)
      victory(2)
    else
      draw
    end
  end

  def winner
    @scores[:player1] > @scores[:player2] ? players[0].name : players[1].name
  end

  private

  def next_round
    @round += 1
  end

  def compare(weapon1, weapon2)
    RULES[weapon1.to_sym] == weapon2.to_sym
  end

  def draw
    'nobody'
  end

  def victory(player_no)
    winner = "player#{player_no}".to_sym
    @scores[winner] += 1
    next_round
    @players[player_no - 1].name
  end
end
