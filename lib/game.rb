class Game

  @game = nil

  attr_reader :player, :game_choice, :game
  WINNING_VALUES = {
    "Rock" => "Scissors",
    "Scissors" => "Paper",
    "Paper" => "Rock"
  }

  def initialize(player)
    @player = player
  end

  def self.new_game(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def play
    @game_choice = choose_response
  end

  def decide_winner(player_choice, game_choice)
    return "It's a draw!" if player_choice == game_choice
    return self.player.name if find_hash_pair == player_choice
    "Player 2"
  end

  private

  def choose_response
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def find_hash_pair
    WINNING_VALUES.key(self.game_choice)
  end



end
