class Console
  attr_reader :move

  def initialize
    @move = random_option
  end

  def random_option
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
