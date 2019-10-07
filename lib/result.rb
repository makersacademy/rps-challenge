class Result

  attr_reader :player1_choice, :player2_choice

  def calculate(player1_choice, player2_choice)
    @player1_choice = player1_choice
    @player2_choice = player2_choice
    find_outcome[player2_choice.to_sym]
  end

  private

  def find_outcome
    return rock if player1_choice == 'Rock'
    return paper if player1_choice == 'Paper'
    return scissors
  end

  def rock
    { Rock: 'Draw',
    Paper: 'Loose',
    Scissors: 'Win' }
  end

  def paper
    { Rock: 'Win',
    Paper: 'Draw',
    Scissors: 'Loose' }
  end

  def scissors
    { Rock: 'Loose',
    Paper: 'Win',
    Scissors: 'Draw' }
  end
end
