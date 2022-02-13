class Random

  def initialize
    @options = ['rock', 'paper', 'scissors']
  end

  def random_option
    @options.sample
  end

end
