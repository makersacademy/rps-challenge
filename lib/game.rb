#controls the game actions including turns
class Game

  attr_reader :player, :turns

  def initialize(player)
    @player = player
    @turns = 0
  end

  def play(play_type)
    @player_play = play_type
    get_ai_play

    @turns += 1
  end

  def get_ai_play
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
