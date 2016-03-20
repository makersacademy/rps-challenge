class Game

  def self.start(player)
    @player = player
  end

  def self.player
    @player
  end

  def self.game_won?
    if @player.choice == "rock" && @player.opponent_choice == "scissors"
      true
    elsif @player.choice == "scissors" && @player.opponent_choice == "paper"
      true
    elsif @player.choice == "paper" && @player.opponent_choice == "rock"
      true
    end
  end

  def self.game_lost?
    if @player.choice == "rock" && @player.opponent_choice == "paper"
      true
    elsif @player.choice == "paper" && @player.opponent_choice == "scissors"
      true
    elsif @player.choice == "scissors" && @player.opponent_choice == "rock"
      true
    end
  end

  def self.game_tied?
    @player.choice == @player.opponent_choice
  end

  def self.game_result
    if Game.game_won?
      "You won!"
    elsif Game.game_lost?
      "You lost!"
    elsif Game.game_tied?
      "You tied!"
    end
  end

end
