class Game
  attr_reader :choice, :automatic_choice

  def record_player_1_choice(choice)
    @choice = choice
  end

  def record_automatic_player_choice
    @automatic_choice = automatic_choice
  end

  def result
    return "you have drew" if @automatic_choice == @choice

    case @choice
    when "paper" then @automatic_choice == 'rock' ? 'you have won' : 'you have lost'
    when "rock" then @automatic_choice == 'scissor' ? 'you have won' : 'you have lost'
    when "scissor" then @automatic_choice == 'paper' ? 'you have won' : 'you have lost'
    end
  end

  private

  def automatic_choice
    ["rock", "paper", "scissor"].sample
  end


end
