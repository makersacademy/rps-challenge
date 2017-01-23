class Game

  attr_reader :player, :choice, :choices, :computer_choice

  def initialize(player)
    @player = player
    @choices = ["rock", "paper", "scissors"]
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def player_choice(choice)
    @choice = choice
  end

  def computer_choice(choice = @choices.sample)
    @computer_choice = choice
  end

  def choose_round_winner
    return "draw" if @choice == @computer_choice

    return "player" if
    @choice == "rock" && @computer_choice == "scissors" ||
    @choice == "paper" && @computer_choice == "rock" ||
    @choice == "scissors" && @computer_choice == "rock"

    return "computer" if
    @choice == "paper" && @computer_choice == "scissors" ||
    @choice == "scissors" && @computer_choice == "rock" ||
    @choice == "rock" && @computer_choice == "paper"
  end

end
