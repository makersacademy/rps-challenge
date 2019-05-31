require './lib/player'

class Game 
  attr_reader :players
  def initialize
    @players = []
  end 

  def self.instance
    @game ||= Game.new
  end

  def add_player(name, player = Player)
    @players << player.new(name)
  end

  def player_name(player_no)
    @players[player_no-1].name
  end 

  def computer_move
    ["Rock", "Paper", "Scissors"].sample
  end 

  def check_winner(player_move, computer_move)
    winning_combo = {"Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper"}

    if player_move == computer_move 
      "It's a draw!"
    elsif 
      computer_move == winning_combo[player_move]
      "#{player_name(1)} wins!"
    else 
      "Computer wins!"
    end
  end
end 