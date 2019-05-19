class RPSGame
  RESULTS = {
    rock: { rock: :draw, paper: :lose, scissors: :win },
    paper: { rock: :win, paper: :draw, scissors: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :draw },
  }
  attr_reader :marketer_1, :marketer_2

  def initialize(marketer_1, marketer_2)
    @marketer_1 = marketer_1
    @marketer_2 = marketer_2
  end

  def self.create(player_1, player_2)
    @game = RPSGame.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def win?
    result == :win
  end

  def draw?
    result == :draw
  end

  def lose?
    result == :lose
  end

  def result
    RESULTS[@marketer_1.weapon.downcase.to_sym][@marketer_2.weapon.downcase.to_sym]
  end
end
