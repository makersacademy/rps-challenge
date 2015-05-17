class Computer

  attr_reader :random_shape

  def initialize
    @random_shape = ''
  end

  def random_choice
    @random_shape = ['rock', 'scissors', 'paper'].sample
  end
end