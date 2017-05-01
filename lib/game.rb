require './lib/results.rb'
require './lib/ai.rb'

# controls the game actions including turns
class Game

  attr_reader :player, :round_with_result, :player_play, :ai_play, :round

  def initialize(player)
    @player = player
    @round = 1
    @round_with_result = 0
  end

  def play_control(play_type)
    @player_play = play_type
    @ai_play = AI.new.result
    new_round
  end

  def new_round
    turn_input = { :player => @player_play, :computer => @ai_play }
    results.generate(turn_input)
    @round_with_result += 1 if results.results_store[@round - 1][:winner] != 'Draw'
    @round += 1
  end

  def self.create(player)
    @instance_capture = Game.new(player)
  end

  def self.load
    @instance_capture
  end

  def results
    @results ||= Results.new
  end

end
