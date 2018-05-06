class Turn
  attr_reader :the_options

  def initialize
    @the_options = ['rock', 'paper', 'scissors']
  end

  def run(move)
    the_options.include?(move) ? move : random_move
  end

  private

  def random_move
    @the_options.sample
  end

end
