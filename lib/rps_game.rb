class RPSGame

  attr_reader :choices
  Players = 2

  def initialize(player_1,player_2)
    @choices = ['rock','paper','scissors']
    @players = [player_1, player_2]
  end

  def game_size
    choices.length
  end

  def current_players
    players.dup
  end

  def player_1_choice
    current_players.first.choice
  end

  def player_2_choice
    current_players.last.choice
  end

  def game_choices
    choices.dup
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

  def random_choice
    choices.sample
  end

  private

  attr_reader :players

  def make_first_in_array(choice)
    rearranged_array = game_choices

    rearranged_array.length.times do
      return rearranged_array if rearranged_array.first == choice
      rearranged_array.rotate!
    end

  end
end
