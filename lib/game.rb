# controls the game actions including turns
class Game

  attr_reader :player, :turns, :player_play, :ai_play

  def initialize(player)
    @player = player
    @turns = 0
  end

  def play(play_type)
    @player_play = play_type
    @ai_play = ai_play_get

    @turns += 1
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
