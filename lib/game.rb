class Game

  RULES = {
    rock: { rock: :tie, paper: :lose, scissors: :win },
    paper: { rock: :win, paper: :tie, scissors: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :tie }
  }

  attr_reader :player_1, :player_2, :result

  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @result
  end

  def result
    RULES[player_1.weapon][player_2.weapon]
  end

end
