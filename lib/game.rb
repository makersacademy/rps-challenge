require_relative 'player'
require_relative 'computer'

class Game
GAME_RULES = {
  Rock: {Rock: :draw, Paper: :lose, Scissors: :win},
  Paper: {Rock: :win, Paper: :draw, Scissors: :lose},
  Scissors: {Rock: :lose, Paper: :win, Scissors: :draw},
  }

attr_reader :player, :player_choice, :computer_choice

  def initialize(options)
    @player = options["player"]
    @player_choice = options["player_choice"]
    @computer_choice = options["computer_choice"]
  end

  def win?
    result == :win
  end

  def lose?
    result == :lose
  end

  def draw?
    result = :draw
  end
  
  def result
    return if @computer_choice.nil?
    GAME_RULES[@player_choice][@computer_choice]
  end
  #
  # def self.create(player)
  #   @game = Game.new(player)
  # end
  #
  # def self.instance
  #   @game
  # end

  # def computer
  #   if Computer.new::choice ==
  # end
end
