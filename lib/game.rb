class Game
  attr_reader :player

  def initialize(player)
    @player = player
    @player_choice = player.selection
  end

  def random_selection
    return ["rock", "paper", "scissors"].sample
  end

  def play
    selection = random_selection

    if selection == @player_choice
      return "Draw"
    elsif selection == "rock" 
      if @player_choice == "paper"
        return "Win"
      end
    elsif selection == "scissors"
      if @player_choice == "rock"
        return "Win"
      end
    elsif selection == "paper"
      if @player_choice == "scissors"
        return "Win"
      end
    end

    return "Lose"
  end
end