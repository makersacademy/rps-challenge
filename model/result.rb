class Result

  def initialize(players_option, computers_option)
    @players_option = players_option
    @computers_option = computers_option
  end

  def winner

    return :draw if @players_option == @computers_option
    return :player if player_wins?
    return :computer
  end

  private

  def winning_conditions
    [
      ['Rock', 'Scissors'],
      ['Paper', 'Rock'],
      ['Scissors', 'Paper']
    ]
  end

  def player_wins?
    winning_conditions.each do |condition|
      if condition.first == @players_option && condition.last == @computers_option
        return true
      end
    end

    false
  end
end
