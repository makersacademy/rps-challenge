require_relative 'player'
require_relative 'sheldon'

class Game

  attr_reader :player_1, :player_2

  # ACTIONS = [:rock, :paper, :scissors, :lizzard, :spock]
  RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win, lizzard: :win, spock: :lose},
    paper: {rock: :win, paper: :draw, scissors: :lose, lizzard: :lose, spock: :win},
    scissors: {rock: :lose, paper: :win, scissors: :draw, lizzard: :win, spock: :lose},
    lizzard: {rock: :lose, paper: :win, scissors: :lose, lizzard: :draw, spock: :win},
    spock: {rock: :win, paper: :lose, scissors: :win, lizzard: :lose, spock: :draw}
  }

  def initialize(session)
    @player_1 = session["player_1"]
    @player_2 = session["player_2"]
    @no_players = session["no_players"]
  end

  def completed?
    player_1.move && player_2.move
  end

  def draw?
    result == :draw
  end

  def win?
    result == :win
  end

  def lose?
    result == :lose
  end

  private

  def result
    return false if player_1.move.nil? || player_2.move.nil?
    RULES[player_1.move][player_2.move]
  end

end
  #
  # def initialize(player_1)
  #   @players = player_1
  #   # @turn = player_2
  # end
  #
  # def player_1
  #   @players
  # end

  # def player_2
  #   @players.last
  # end

  # def sheldon_move
