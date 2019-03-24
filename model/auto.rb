class Auto
  attr_reader :random

  def random_pick
    @random = ['Rock', 'Paper', 'Scissors'].sample
  end
end
