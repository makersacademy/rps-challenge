require 'yaml'

class Game

  attr_reader :player_1_name, :player_1_choice, :player_2_choice, :game

  DEFAULT_FINISH_SCORE = 20
  SHAPES = [:rock, :paper, :scissors]
  WIN_RULES = { rock: :scissors,
              paper: :rock,
              scissors: :paper }
  OUTPUT_FILE = "game.results"

  def initialize(choices)
    @player_1_name = choices["player_1_name"]
    @player_1_choice = choices["player_1_choice"]
    @player_2_choice = choices["player_2_choice"]
  end

  def self.create(choices)
    @game = Game.new(choices)
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

  def game_over?
  end

  def save_game(data)
    File.open(OUTPUT_FILE, 'a') do |f|
      f << data.to_yaml
    end
    File.chmod(0600, OUTPUT_FILE)
  end

private

  def result
    return :draw if @player_1_choice == @player_2_choice
    WIN_RULES[@player_1_choice] == @player_2_choice ? :win : :lose
  end

end
