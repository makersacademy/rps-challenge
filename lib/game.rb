class Game

  COMBINATIONS = {
    rock: { rock: :draw, paper: :lose, scissors: :win, lizard: :win, spock: :lose },
    paper: {rock: :win, paper: :draw, scissors: :lose, lizard: :lose, spock: :win},
    scissors: {rock: :lose, paper: :win, scissors: :draw, lizard: :win, spock: :win},
    lizard: {rock: :lose, paper: :win, scissors: :lose, lizard: :draw, spock: :win},
    spock: {rock: :win, paper: :lose, scissors: :win, lizard: :lose, spock: :draw}
  }

  attr_reader :player_name, :player_item, :computer_item

  def initialize(args)
    @player_name = args["player_name"]
    @player_item = args["player_item"]
    @computer_item = args["computer_item"]
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

  def result
    return if @computer_item.nil?
    COMBINATIONS[@player_item][@computer_item]
  end




end
