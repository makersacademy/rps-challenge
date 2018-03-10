class Results
  attr_reader :choice1, :choice2

  def initialize(choice1, choice2)
    @choice1 = choice1
    @choice2 = choice2
  end


  def winner
    @decide = {
    :Rock => { Paper: 'You lost', Scissors: 'You won', Rock: 'You tied' },
    :Paper => { Paper: 'You tied', Scissors: 'You lost', Rock: 'You won' },
    :Scissors => { Paper: 'You won', Scissors: 'You tied', Rock: 'You lost' } }
  end

  def declare
    @decide[@choice1.turn.to_sym][@choice2.turn.to_sym]
  end

end
