class RPSGame

  attr_reader :choices, :player_1_choice, :player_2_choice

  def initialize(choices)
    @choices = choices
    @player_1_choice = nil
    @player_2_choice = nil
  end

  def game_choices
    choices.list
  end

  def update_player_1_choice(choice)
    self.player_1_choice = choice
  end

  def update_player_2_choice(choice)
    self.player_2_choice = choice
  end

  def outcome
    return "draw" if player_1_choice == player_2_choice

    player_1_winning_choices = choices_that_win_against(player_2_choice)
    if player_1_winning_choices.include?(player_1_choice)
      "player_1"
    else
      "player_2"
    end
  end


  def choices_that_win_against(choice)

    choice_array = make_first_in_array(choice)

    output = choice_array.select.with_index do |choice, index|
      choice unless index%2 == 1
    end

    return output
  end

  private
  attr_writer :player_1_choice, :player_2_choice

  def make_first_in_array(choice)
    rearranged_array = game_choices
    rearranged_array.length.times do
      return rearranged_array if rearranged_array.first == choice
      rearranged_array.rotate!
    end

    return rearranged_array

  end
end
