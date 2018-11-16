require_relative 'human_player'
require_relative 'computer_player'


class Game
  attr_reader :human_player, :computer_player

  def initialize(name, human_player_class = Human_Player, computer_player_class = Computer_Player)
    @human_player = human_player_class.new(name)
    @computer_player = computer_player_class.new
  end

  def decide_winner(human_move, computer_move)
    if human_move == computer_move
      "Draw"
    elsif (human_move == "Rock" && computer_move == "Scissors")
      @human_player.name
    elsif (human_move == "Rock" && computer_move == "Paper")
      @computer_player.name
    elsif (human_move == "Paper" && computer_move == "Scissors")
      @computer_player.name
    elsif (human_move == "Paper" && computer_move == "Rock")
      @human_player.name
    elsif (human_move == "Scissors" && computer_move == "Rock")
      @computer_player.name
    elsif (human_move == "Scissors" && computer_move == "Paper")
      @human_player.name
    end
  end
end
