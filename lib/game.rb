class Game

  attr_reader :computer_choice, :winner

  RPS_BEATS = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }

  def initialize(player)
    @player = player
    calculate_player_details(player)
    calculate_winner(player.rps_choice, rps_random)
  end

  private

  def calculate_winner(players_choice, random_choice)
    if RPS_BEATS[players_choice] == random_choice
      @winner = @player.name
    else
      @winner = 'Computer'
    end
  end

  def calculate_player_details(player)
    @players_choice = player.rps_choice
  end

  def rps_random
    @computer_choice = remove_players_choice.sample
  end

  def remove_players_choice
    ['Rock', 'Paper', 'Scissors'] - [@players_choice]
  end

end
