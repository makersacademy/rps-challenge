class Game
  def initialize(player, randomizer = Randomizer.new)
    @randomizer = randomizer
    @player = player
  end

  def computers_choice
    @computers_choice = @randomizer.result
  end

  def players_choice(choice)
    @players_choice = choice
  end

  def winner
    determine_winner(@computers_choice, @players_choice)
  end

  private

  # attr_reader :players_choice, :computers_choice

  def determine_winner(computers_choice, players_choice)
    # return "Draw" if draw?(computers_choice, players_choice)
    if draw?(computers_choice, players_choice)
      return "Draw"
    end
    if player_wins?(computers_choice, players_choice)
      return "Player wins"
    end
    "Computer wins"
  end

  def draw?(computers_choice, players_choice)
    computers_choice == players_choice
  end

  def player_wins?(computers_choice, players_choice)
    if players_choice == "Rock"
      computers_choice == "Scissors"
    elsif players_choice == "Paper"
      computers_choice == "Rock"
    elsif players_choice == "Scissors"
      computers_choice == "Paper"
    end
  end
end
