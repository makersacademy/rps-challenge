class Player

  MOVES = ['ROCK','PAPER','SCISSORS','LIZARD','SPOCK']

  attr_reader :name, :move, :score, :in_round

  def initialize(name)
    name.empty? ? @name = 'Anon' : @name = name
    @score = 0
    @in_round = false
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

  def gain_score
    @score += 1
  end

  def enter_round
    @in_round = true
  end

  def exit_round
    @in_round = false
  end
end
