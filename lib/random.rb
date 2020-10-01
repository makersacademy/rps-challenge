class Random

  attr_reader :options

  def initialize
    @options = ['rock', 'paper', 'scissors']
  end

  def generate
    options.sample
  end
end
