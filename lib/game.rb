class Game
  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def player
    @player.name
  end

  def com
    @computer.name
  end

  def compare(player_choice, computer_choice)
    if player_choice == computer_choice
      "It's a draw."
    elsif player_win(player_choice, computer_choice)
      "#{player} wins!"
    else
      "#{com} wins!"
    end
  end

  private

  def player_win(player_choice, computer_choice)
    player_win1 = player_choice == "Rock" && computer_choice == "Scissors"
    player_win2 = player_choice == "Paper" && computer_choice == "Rock"
    player_win3 = player_choice == "Scissors" && computer_choice == "Paper"
    player_win1 || player_win2 || player_win3
  end
end
