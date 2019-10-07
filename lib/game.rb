class Game

  attr_reader :player, :move, :result

  RULES = {
    'rock-rock' => 0,
    'rock-paper' => -1,
    'rock-scissors' => 1,
    'paper-rock' => 1,
    'paper-paper' => 0,
    'paper-scissors' => -1,
    'scissors-rock' => -1,
    'scissors-paper' => 1,
    'scissors-scissors' => 0
  }

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def make_random_move
    @move = moves.sample
  end

  def moves
    ['rock', 'paper', 'scissors']
  end

  def outcome(move1, move2)
    @result = RULES[move1 + '-' + move2]
  end

  private :moves

end
