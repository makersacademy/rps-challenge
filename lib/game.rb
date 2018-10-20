class Game
  attr_reader :player

  def initialize(player)
    @player = player
    @current_game = nil
  end

  def self.store_game(game)
    @current_game = game
  end

  def self.current_game
    @current_game
  end

  def computer_selection
    string =
    [
      "Rock", "Paper", "Scissors",
      "Spock", "Lizard"
    ]
    return string.sample
  end

  def play(player_selection, computer_selection)
    
  end

  # def rock(computer)
  #   ["Scissors", "Lizard" ].include? computer
  # end
end
