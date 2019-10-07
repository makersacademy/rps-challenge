class Game

  RPS_WINS = {
    'rock' => ['scissors', 'lizard'], 'paper' => ['rock', 'spock'],
           'scissors' => ['paper', 'lizard'], 'lizard' => ['spock', 'paper'],
           'spock' => ['rock', 'scissors']
         }


  attr_reader :player, :computer_choice, :result, :player_choice, :game_type

  def initialize(player, game_type)
    @player = player
    @game_type = game_type
  end

  def self.create(player, game_type)
    @game = Game.new(player, game_type)
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
    elsif RPS_WINS[player_choice].include? computer_choice
      "Win"
    else
      "Lose"
    end
  end

  def random_result
    if @game_type == "classic"
    ["rock", "paper", "scissors"].sample
    else
    ["rock", "paper", "scissors", "spock", "lizard"].sample
    end
  end
end
