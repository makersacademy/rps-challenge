class Game

  attr_reader :player, :turns

  def initialize(player)
    @player = player
    @turns = 0
  end

  def play(play_type)
    @player_play = play_type
    get_weapon
    @turns += 1
  end

  def get_weapon
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
