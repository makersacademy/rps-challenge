class Game

  attr_reader :player_1, :computer_weapon, :winner
  WEAPONS = ["Rock", "Scissors", "Paper"]

  def initialize(player_1)
    @player_1 = player_1
    @computer_weapon = "Paper"
    @winner = "Computer"
  end

  def computer_random_choice
    @computer_weapon = WEAPONS.sample
  end

  def players_index_location
    @computer_weapon = computer_random_choice
    @computer_index = WEAPONS.index(@computer_weapon)
    @player_1_index = WEAPONS.index(@player_1.weapon)
  end

  def play_game
    players_index_location
    return @winner = @player_1.name if WEAPONS[@computer_index - 1] == WEAPONS[@player_1_index]
    return @winner = "It's a draw" if @computer_index == @player_1_index
  end
end
