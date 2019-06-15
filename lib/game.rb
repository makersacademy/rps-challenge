require './lib/result_generator'

class Game

  attr_reader :player, :round, :player_play, :computer_play, :results

  def initialize(player)
    @player = player
    @turns = 0
    @round = 1
    @results = []
  end

  def play(play_type)
    @player_play = play_type
    @computer_play = comp_choice
    @turns += 1
    turn_input = Hash[@player.name => @player_play, :computer => @computer_play]
    @results << Result_generator.new.generate(turn_input)
  end

  def comp_choice
    types = ['ROCK', 'PAPER', 'SCISSORS']
    types.sample
  end

  def self.create(player)
    @instance = Game.new(player)
  end

  def self.load
    @instance
  end

end
