require './lib/results'
require './lib/comp_randomiser'

class Game

  attr_reader :player, :round, :player_play, :computer_play, :results

  def initialize(player)
    @player = player
    @turns = 0
    @round = 1
  end

  def play_control(play_type)
    @player_play = play_type

    @computer_play = CompRandomiser.new.result
    new_round
  end

  def new_round
    turn_input = { :player => @player_play, :computer => @computer_play}
    round_result = results.generate(turn_input)
    results.store(round_result)
    @round += 1
  end

  def self.create(player)
    @instance = Game.new(player)
  end

  def self.load
    @instance
  end

  def results
    @results ||= Results.new
  end
end
