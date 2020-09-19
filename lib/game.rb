class Game
  attr_reader :name

  WINNING_MOVES = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }

  def initialize(name)
    @name = name

  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end
  #
  # def name
  #   @name
  # end

  def play(move1, move2 = random_move)
    if WINNING_MOVES[move1.to_sym] == move2.to_sym
      'You won!'
    elsif move1 == move2
      'You tied'
    else
      'You lost'
    end
  end

  private

  def random_move
    ['rock', 'paper', 'scissors'].sample
  end

end
