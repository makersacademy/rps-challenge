class Game

  RPS_LOSSES = {
    "rock" => "paper",
    "paper" => "scissors",
    "scissors" => "rock"
  }

  attr_reader :player, :computer_choice, :result, :player_choice

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def run_game(player_choice)
    @player_choice = player_choice
    @computer_choice = random_result
    @result = is_player_winner(@player_choice, @computer_choice)
  end

  private

  def is_player_winner(player_choice, computer_choice)
    if player_choice == computer_choice
      "Draw"
    elsif RPS_LOSSES[player_choice] == computer_choice
      "Lose"
    else
      "Win"
    end
  end

  def random_result
    ["rock", "paper", "scissors"].sample
  end
end
