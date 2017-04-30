require './lib/result_generator.rb'

# controls the game actions including turns
class Game

  attr_reader :player, :round, :player_play, :ai_play, :results

  def initialize(player)
    @player = player
    @round = 1
    @results = []
  end

  def play(play_type)
    @player_play = play_type
    @ai_play = ai_play_get
    turn_input = Hash[@player.name => @player_play, :computer => @ai_play]
    @results << Result_generator.new.generate(turn_input)
    @round += 1
  end

  def ai_play_get
    types = ['ROCK', 'PAPER', 'SCISSORS']
    types.sample
  end

  def self.create(player)
    @instance_capture = Game.new(player)
  end

  def self.load
    @instance_capture
  end

end
