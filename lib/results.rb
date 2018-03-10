class Results
  attr_reader :choice, :ai, :decide

  def initialize(choice)
    @choice = choice
  end

  def computer
    @ai = %w(Rock Paper Scissors).sample
  end

  def winner
    @decide = {
    :Rock => { Paper: 'You lost', Scissors: 'You won', Rock: 'You tied' },
    :Paper => { Paper: 'You tied', Scissors: 'You lost', Rock: 'You won' },
    :Scissors => { Paper: 'You won', Scissors: 'You tied', Rock: 'You lost' } }
  end

  def declare
    @decide[@choice.to_sym][@ai.to_sym]
  end
end
