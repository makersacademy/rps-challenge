class Game

attr_reader :player_choice, :options, :game_choice

OPTIONS = ["rock", "paper", "scissors"]

  def initialize(player_choice)
    @player_choice = player_choice
    @options = OPTIONS
    @game_choice = random_move
  end

  def random_move
    @options.sample
  end

end
