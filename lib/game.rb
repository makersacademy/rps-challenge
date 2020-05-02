class Game

  attr_reader :options

  def initialize
    @options = ['rock', 'paper', 'scissors']
  end

  def rps
    @options.sample
  end

end
