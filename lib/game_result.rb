class GameResult

  def self.calculate(player_choice, game_choice)
    @player_choice = player_choice
    @game_choice = game_choice
    when_choices_are_not_equal
    when_choices_are_equal
    @result
  end

  def self.when_choices_are_not_equal
    outcomes = {
                  ['Rock', 'Paper'] => 'win',
                  ['Rock', 'Scissors'] => 'lose',
                  ['Paper', 'Scissors'] => 'win',
                  ['Paper', 'Rock'] => 'lose',
                  ['Scissors', 'Rock'] => 'win',
                  ['Scissors', 'Paper'] => 'lose',
                }
    @result = outcomes[[@player_choice, @game_choice]]
  end

  def self.when_choices_are_equal
    @result = 'tie' if @player_choice == @game_choice
  end
end
