class Turn

  CHECK = {
    rock: {rock: :draw, paper: :lose, scissors: :win},
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw}
  }

  attr_reader :player_name, :player_attack, :computer_attack

  def initialize(options)
    @player_name = options["player_name"]
    @player_attack = options["player_attack"]
    @computer_attack = options["computer_attack"]
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

  private

  def result
    return if @computer_attack.nil?
    CHECK[@player_attack][@computer_attack]
  end
end