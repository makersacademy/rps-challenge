class RockPaperScissors
  attr_reader :name, :player_score, :computer_score

  def initialize(name)
    @name = name
    @player_score = 0
    @computer_score = 0
  end

  def action(p1_choice, p2_choice)
    action_result = result(p1_choice, p2_choice)
    update_score(action_result)
    action_result
  end

  def random_choice
    ['rock', 'paper', 'scissors'].sample
  end

  def result(p1_choice, p2_choice)
    # Return the number of the player that won (1, 2) or 0 in case of a draw
    if (p1_choice == p2_choice)
      0
    elsif (p1_choice == 'rock' && p2_choice == 'scissors')
      1
    elsif (p1_choice == 'scissors' && p2_choice == 'paper')
      1
    elsif (p1_choice == 'paper' && p2_choice == 'rock')
      1
    else
      2
    end
  end

  private

  def update_score(action_result)
    case action_result
    when 1
      @player_score += 1
    when 2
      @computer_score += 1
    end
  end
end
