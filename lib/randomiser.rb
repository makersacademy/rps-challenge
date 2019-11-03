class Randomiser
  attr_reader :random_option

  def initialize
    @random_option = ['Rock', 'Paper', 'Scissors']
  end

  def random_option
    random_option.sample
  end
end
