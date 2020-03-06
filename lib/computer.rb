
class Computer

  attr_reader :move

  OPTIONS = ['rock', 'paper', 'scissors']

  def initialize
    @move = nil
  end

  def random_move
    @move = OPTIONS.sample
  end

end