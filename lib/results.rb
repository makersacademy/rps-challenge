class Results
  attr_reader :choice, :computer, :decide, :player2

  def initialize(choice)
    @choice = choice
  end

  def opponent(player2)
    @player2 = player2
  end

  def winner
    @decide = {
    :Rock => { Paper: 'You lost', Scissors: 'You won', Rock: 'You tied' },
    :Paper => { Paper: 'You tied', Scissors: 'You lost', Rock: 'You won' },
    :Scissors => { Paper: 'You won', Scissors: 'You tied', Rock: 'You lost' } }
  end

  def declare
    @decide[@choice.to_sym][@player2.ai.to_sym]
  end
end
