class Game

  COMBINATIONS = {
    rock: { rock: :draw, paper: :lose, scissors: :win },
    paper: {rock: :win, paper: :draw, scissors: :lose},
    scissors: {rock: :lose, paper: :win, scissors: :draw},
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
