class Game

  attr_reader :computer_choice, :winner, :player_choice, :player

  RPS_BEATS = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }

  def initialize(player)
    store_player_details(player)
  end

  def play(choice)
    update_player(choice)
    @winner = calculate_winner
  end

  private
  def store_player_details(player)
    @player = player
  end

  def update_player(choice)
    @player.rps_choice = choice
    @player_choice = @player.rps_choice
  end

  def calculate_winner
    create_random_choice
    player_wins? ? @player.name : 'Computer'
  end

  def player_wins?
    RPS_BEATS[@player_choice] == @computer_choice
  end

  def create_random_choice
    @computer_choice = (['Rock', 'Paper', 'Scissors'] - [@player_choice]).sample
  end

end
