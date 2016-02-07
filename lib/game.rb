# require_relative 'player'

class Game

  # attr_reader :type

  ACTIONS = [:rock, :paper, :scissors, :lizzard, :spock]
  RULES = {
    rock: {rock: :draw, paper: :lose, scissors: :win, lizzard: :win, spock: :lose},
    paper: {rock: :win, paper: :draw, scissors: :lose, lizzard: :lose, spock: :win},
    scissors: {rock: :lose, paper: :win, scissors: :draw, lizzard: :win, spock: :lose},
    lizzard: {rock: :lose, paper: :win, scissors: :lose, lizzard: :draw, spock: :win},
    spock: {rock: :win, paper: :lose, scissors: :win, lizzard: :lose, spock: :draw}
  }

  def initialize(p1, p2)
    @players = [p1, p2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def result(p1, p2)
    RULES[p1][p2]
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
