class GameResult

  @possible_outcomes = {
                         ['Rock', 'Paper'] => 'win',
                         ['Rock', 'Scissors'] => 'lose',
                         ['Paper', 'Scissors'] => 'win',
                         ['Paper', 'Rock'] => 'lose',
                         ['Scissors', 'Rock'] => 'win',
                         ['Scissors', 'Paper'] => 'lose',
                         ['Scissors', 'Scissors'] => 'tie',
                         ['Paper', 'Paper'] => 'tie',
                         ['Rock', 'Rock'] => 'tie',
                       }

  def self.calculate(player_choice, game_choice)
    @player_choice = player_choice
    @game_choice = game_choice
    check_possible_outcomes
    @result
  end

  def self.check_possible_outcomes
    @result = @possible_outcomes[[@player_choice, @game_choice]]
  end
end
