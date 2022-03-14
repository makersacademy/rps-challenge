class Game

  attr_reader :player, :moves

  def initialize(player)
    @player = player
    @moves = ["rock", "paper", "scissors"]
    @wins = 0
    @losses = 0
    @draws = 0
  end

  def ai_choice
    @moves.sample
  end

  def evaluation(ai_choice, player_choice)
    if player_choice == ai_choice
      return draw
    elsif ai_choice == "rock"
      if player_choice == "paper"
        return win
      elsif player_choice == "scissors"
        return lose
      end
    elsif ai_choice == "paper"
      if player_choice == "rock"
        return lose
      elsif player_choice == "scissors"
        return win
      end
    elsif ai_choice == "scissors"
      if player_choice == "rock"
        return win
      elsif player_choice == "paper"
        return lose
      end
    end
  end

  def session_record
    return "Your overall record is #{wins} wins, #{losses} losses and #{draws} draws!"
  end

  private

  def draw
    @draws += 1
    return "It's a tie. Great minds think alike."
  end

  def win
    @wins += 1
    return "You win. Congratulations!"
  end

  def lose
    @losses +=1
    return "You lose... better luck next time."
  end

end
