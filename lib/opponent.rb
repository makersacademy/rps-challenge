class Opponent

  attr_reader :random_choice
  def random_choice
    ['Rock', 'Paper', 'Scissors'].sample
  end
end