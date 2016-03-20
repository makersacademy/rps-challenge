class Player

  MOVES = ['ROCK','PAPER','SCISSORS','LIZARD','SPOCK']

  attr_reader :name, :move

  def initialize(name)
    name.empty? ? @name = 'Anon' : @name = name
  end

  def choose(move)
    @move = move
  end

  def choose_random
    @move = MOVES.sample
  end

  def chosen?
    !!@move
  end

  def reset_choice
    @move = nil
  end
end
