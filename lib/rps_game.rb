class RPSGame

  attr_reader :choices, :player_1_choice, :player_2_choice

  def initialize(player_1_choice,player_2_choice,choices)
    @choices = choices
    @player_1_choice = player_1_choice
    @player_2_choice = player_2_choice
  end

  def game_choices
    choices.list
  end

  def player_1_outcome(player_1_choice, player_2_choice)
    return "draw" if player_1_choice == player_2_choice

    player_1_winning_choices = choices_that_win_against(player_2_choice)
    if player_1_winning_choices.include?(player_1_choice)
      "win"
    else
      "lose"
    end
  end


  def choices_that_win_against(choice)
    choice_array = make_first_in_array(choice)
    choice_array[1]
  end

  private

  def make_first_in_array(choice)
    rearranged_array = game_choices

    rearranged_array.length.times do
      return rearranged_array if rearranged_array.first == choice
      rearranged_array.rotate!
    end

  end
end
