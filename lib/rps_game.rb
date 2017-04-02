class RPSGame

  Gamesize = 3
  Players = 2

  def initialize(player_1,player_2)
    @choices = %w(rock paper scissors)
    @players = [player_1, player_2]
  end


  def player_1_choice
    @players.first.choice
  end

  def player_2_choice
    @players.last.choice
  end

  def game_choices
    choices.dup
  end

  def random_choice
    choices.sample
  end


  def choices_that_win_against(choice)
    choice_array = make_first_in_array(choice)
    choice_array[1]
  end

  attr_reader :choices, :players

  private

  def make_first_in_array(choice)
    rearranged_array = game_choices

    rearranged_array.length.times do
      return rearranged_array if rearranged_array.first == choice
      rearranged_array.rotate!
    end

  end
end
