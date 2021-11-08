class GameLogic
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def result
    case @player_1.choice
    when "Rock"
      result_rock
    when "Paper"
      result_paper
    when "Scissors"
      result_scissors
    when "Lizard"
      result_lizard
    when "Spock"
      result_spock
    end
  end

  private

  def result_rock
    case @player_2.choice
    when "Rock"
      "Draw"
    when "Paper", "Spock"
      "Lose"
    when "Scissors", "Lizard"
      "Win"
    end
  end

  def result_paper
    case @player_2.choice
    when "Rock", "Spock"
      "Win"
    when "Paper"
      "Draw"
    when "Scissors", "Lizard"
      "Lose"
    end
  end

  def result_scissors
    case @player_2.choice
    when "Rock", "Spock"
      "Lose"
    when "Paper", "Lizard"
      "Win"
    when "Scissors"
      "Draw"
    end
  end

  def result_lizard
    case @player_2.choice
    when "Rock", "Scissors"
      "Lose"
    when "Paper", "Spock"
      "Win"
    when "Lizard"
      "Draw"
    end
  end

  def result_spock
    case @player_2.choice
    when "Rock", "Scissors"
      "Win"
    when "Paper", "Lizard"
      "Lose"
    when "Spock"
      "Draw"
    end
  end

end