class Game

  attr_reader :computer_choice, :winner, :player_choice, :player

  RPS_BEATS = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }

  def initialize(player)
    store_player_details(player)
    @winner = calculate_winner(player.rps_choice, rps_random)
  end

  def update_player_choice(choice)
    @player.rps_choice = choice
    @player_choice = @player.rps_choice
  end

  private
  def calculate_winner(rps_player, rps_random)
    player_wins?(rps_player, rps_random) ? @player.name : 'Computer'
  end

  def player_wins?(players_choice, random_choice)
    RPS_BEATS[players_choice] == random_choice
  end

  def store_player_details(player)
    @player = player
    @player_choice = player.rps_choice
  end

  def rps_random
    @computer_choice = remove_players_choice.sample
  end

  def remove_players_choice
    ['Rock', 'Paper', 'Scissors'] - [@players_choice]
  end

end
