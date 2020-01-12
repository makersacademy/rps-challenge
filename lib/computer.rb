class Computer

  attr_writer :random_seed

  def random_seed_gen
    rand(1_000_000)
  end

  def guess
    srand(@random_seed || random_seed_gen)
    guesses = %w{Rock Paper Scissors}
    guesses.sample
  end
end