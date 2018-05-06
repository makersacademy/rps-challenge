class Turn
  attr_reader :the_options

  def initialize
    @the_options = ['rock', 'paper', 'scissors']
  end

  def run
    the_move(random_number)
  end

  private

  def random_number
    rand(3)
  end

  def the_move(number)
    the_options[number]
  end
end
