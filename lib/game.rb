class Game

  attr_reader :choice, :computers_choice

  def random_choice
    @computers_choice = ["rock", "paper", "scissor"].sample
    @computers_choice
  end

  def win_condition_for_rock
    if random_choice == 'scissor'
      'Winner'
    end

  end
end
