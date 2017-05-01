require './lib/results.rb'
require './lib/ai_randomiser.rb'

# controls the game actions including turns
class Game

  attr_reader :player, :round, :player_play, :ai_play, :results

  def initialize(player)
    @player = player
    @round = 1
  end

  def play_control(play_type)
    @player_play = play_type
    @ai_play = AI_randomiser.new.result
    new_round
  end

  def new_round
    turn_input = { :player => @player_play, :computer => @ai_play }
    round_result = results.generate(turn_input)
    results.store(round_result)
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
