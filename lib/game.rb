require './lib/results'
require './lib/computer'

class Game

  attr_reader :player, :round_with_result, :player_play, :computer_play, :round

  def initialize(player)
    @player = player
    @round = 1
    @round_with_result = 0
  end

  def play_control(play_type)
    @player_play = play_type
    @computer_play = Computer.new.result
    new_round
  end

  def new_round
    turn_input = { :player => @player_play, :computer => @computer_play }
    results.generate(turn_input)
    @round_with_result += 1 if results.results_store[@round - 1][:winner] != 'Draw'
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
