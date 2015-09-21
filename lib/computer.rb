require_relative 'player'

class Computer < Player

  def initialize
    super('Computer')
  end

  def make_choice(options)
    @choice = options.sample
  end

end