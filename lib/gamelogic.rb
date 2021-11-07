class GameLogic
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def result
    if @player_1.choice == "Rock"
      result_rock
    elsif @player_1.choice == "Paper"
      result_paper
    else
      result_scissors
    end
  end

  private

  def result_rock
    case @player_2.choice
    when "Rock"
      "Draw"
    when "Paper"
      "Lose"
    when "Scissors"
      "Win"
    end
  end

  def result_paper
    case @player_2.choice
    when "Rock"
      "Win"
    when "Paper"
      "Draw"
    when "Scissors"
      "Lose"
    end
  end

  def result_scissors
    case @player_2.choice
    when "Rock"
      "Lose"
    when "Paper"
      "Win"
    when "Scissors"
      "Draw"
    end
  end
end