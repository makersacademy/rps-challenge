require_relative 'player'

class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  RULES = {
    rock: { rock: :draw, paper: :lose, scissors: :win, spock: :lose, lizard: :win },
    paper: { rock: :win, paper: :draw, scissors: :lose, spock: :win, lizard: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :draw, spock: :lose, lizard: :win },
    spock: { rock: :win, paper: :lose, scissors: :win, spock: :draw, lizard: :lose },
    lizard: { rock: :lose, paper: :win, scissors: :lose, spock: :win, lizard: :draw }
  }

  def outcome
    RULES[player_1.weapon][player_2.weapon]
  end

end
