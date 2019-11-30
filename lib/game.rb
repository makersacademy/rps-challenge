class Game
  WIN_COMBINATIONS = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }
  def self.instance
    @game
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  attr_reader :player

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def calculate_result
    return "You tie!" if player_choice == computer_choice
    return "You win!" if WIN_COMBINATIONS[player_choice] == computer_choice
    
    "You lose!"
  end

  def player_name
    @player.name
  end

  def player_choice
    @player.choice
  end

  def update_player_choice(choice)
    @player.update_choice(choice)
  end

  def computer_choice
    @computer.random_choice
  end
end
