class Game
  attr_reader :choice, :automatic_choice

  def record_player_1_choice(choice)
    @choice = choice
  end

  def record_automatic_player_choice
    @automatic_choice = automatic_choice
  end

  def result
    return "draw" if @automatic_choice == @choice

    case @choice
    when "paper" then @automatic_choice == 'rock' ? 'win' : 'lost'
    when "rock" then @automatic_choice == 'scissor' ? 'win' : 'lost'
    when "scissor" then @automatic_choice == 'paper' ? 'win' : 'lost'
    end
  end

  private

  def automatic_choice
    ["rock", "paper", "scissor"].sample
  end


end
