class Game

  attr_reader :player, :computer_choice, :player_choice
  def initialize(player)
    @player = player
    @computer_choice = nil
    @player_choice = nil
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def computer_chooses
    @computer_choice = Game.random
  end

  def player_chooses(choice)
    @player_choice = choice
  end

  def self.random
    ["Rock", "Paper", "Scissors", "Lizard", "Spock"].sample
  end

  def win_lose_draw(player, computer)
    rules = { "Rock" => { "Rock" => "draw", "Paper" => "lose", "Scissors" => "win", "Lizard" => "win", "Spock" => "lose" },
              "Paper" => { "Rock" => "win", "Paper" => "draw", "Scissors" => "lose", "Lizard" => "lose", "Spock" => "win" },
              "Scissors" => { "Rock" => "lose", "Paper" => "win", "Scissors" => "draw", "Lizard" => "win", "Spock" => "lose" },
              "Lizard" => { "Rock" => "lose", "Paper" => "win", "Scissors" => "lose", "Lizard" => "draw", "Spock" => "win" },
              "Spock" => { "Rock" => "win", "Paper" => "win", "Scissors" => "lose", "Lizard" => "lose", "Spock" => "draw" }
            }

    rules[player][computer]
  end
end
