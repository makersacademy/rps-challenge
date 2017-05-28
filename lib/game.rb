
require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :players
  attr_accessor :scores, :no_of_rounds

  WEAPONS = [:ruby, :paper, :scissors]
  RULES = { :ruby => :scissors, :scissors => :paper, :paper => :ruby }.freeze

  def initialize
    @players = []
    @no_of_rounds = nil
    @scores = { player1: 0, player2: 0 }
  end

  def create_players(player1, player2 = Computer.new('computer'))
    @players << player1
    @players << player2
  end

  def save_game; end

  def load_game; end
end
