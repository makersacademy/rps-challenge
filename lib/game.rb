class Game
  attr_reader :player, :selection

  def initialize(player)
    @player = player
    @player_choice = @player.selection
    @selection = ""
  end

  def random_selection
    return ["rock", "paper", "scissors"].sample
  end

  def play
    @selection = random_selection

    if @selection == @player_choice
      return "Drew"

    elsif @selection == "rock" 
      if @player_choice == "paper"
        return "Win"
      else
        return "Lose"
      end

    elsif @selection == "scissors"
      if @player_choice == "rock"
        return "Win"
      else
        return "Lose"
      end

    elsif @selection == "paper"
      if @player_choice == "scissors"
        return "Win"
      else
        return "Lose"
      end
    end
  end

end