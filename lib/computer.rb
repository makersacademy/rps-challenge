class Computer
  attr_reader :random_pick

  def random_pick
    ["Rock", "Papper", "Scissors"].sample
  end

end