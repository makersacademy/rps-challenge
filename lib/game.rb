require_relative 'computer'

class Game

  RULES = {
    rock: { rock: :draw, paper: :lose, scissors: :win },
    paper: { rock: :win, paper: :draw, scissors: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :draw }
  }

attr_reader :player_name, :player_tool, :computer_tool

  def initialize(options)
    @player_name = options["player_name"]
    @player_tool = options["player_tool"]
    @computer_tool = options["computer_tool"]
  end

  def win?
    result == :win
  end

  def lose?
    result == :lose
  end

  def draw?
    result == :draw
  end

  private

  def result
    return if @computer_tool.nil?
    RULES[@player_tool][@computer_tool]
  end
end
