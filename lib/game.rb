class Game

  attr_reader :player

  def initialize(player, randomizer = Randomizer.new, determinewinner = DetermineWinner.new)
    @randomizer = randomizer
    @player = player
    @determinewinner = determinewinner
  end

  def computers_choice
    @computers_choice = @randomizer.result
  end

  def players_choice(choice)
    @players_choice = choice
  end

  def winner
    @determinewinner.result(@computers_choice, @players_choice)
  end

  private
  #
  # def determine_winner(computers_choice, players_choice)
  #   return "Draw" if draw?(computers_choice, players_choice)
  #   return "Player wins" if player_wins?(computers_choice, players_choice)
  #   "Computer wins"
  # end
  #
  # def draw?(computers_choice, players_choice)
  #   computers_choice == players_choice
  # end
  #
  # def player_wins?(computers_choice, players_choice)
  #   return true if players_choice == "Rock" && computers_choice == "Scissors"
  #   return true if players_choice == "Paper" && computers_choice == "Rock"
  #   return true if players_choice == "Scissors" && computers_choice == "Paper"
  # end
end
