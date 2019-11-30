class Game

  def initialize(name = name)
    @name = name
  end

  def outcome(player_choice, bot_choice)
    if player_choice == bot_choice
      "It's a draw!"
    elsif player_wins(player_choice, bot_choice)
      "#{@name} wins!!!"
    else
      "Botman wins!!!"
    end
  end

  private

  def player_wins(player_choice, bot_choice)
    (player_choice == "Rock" && bot_choice == "Scissors") ||
    (player_choice == "Paper" && bot_choice == "Rock") ||
    (player_choice == "Scissors" && bot_choice == "Paper")  
  end

end
