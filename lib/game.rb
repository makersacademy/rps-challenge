class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def player_1
    return @player1
  end

  def player_2
    return @player2
  end

  def set_choice(player, choice)
    player.choice = choice
  end

  def rand_choice(player)
    player.choice = ["rock", "paper", "scissors"].sample
  end

  def who_won
    return "draw" if @player1.choice == nil
    if @player1.choice == "rock"
      return "draw" if @player2.choice == "rock"
      return player2_won if @player2.choice == "paper"
      return player1_won if @player2.choice == "scissors"
    end
    if @player1.choice == "paper"
      return "draw" if @player2.choice == "paper"
      return player1_won if @player2.choice == "rock"
      return player2_won if @player2.choice == "scissors"
    end
    if @player1.choice == "scissors"
      return "draw" if @player2.choice == "scissors"
      return player2_won if @player2.choice == "rock"
      return player1_won if @player2.choice == "paper"
    end
  end

  private
  def player1_won
    @player1.you_won
    return @player1
  end

  def player2_won
    @player2.you_won
    return @player2
  end
end
