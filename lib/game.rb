require './lib/player'

class Game

  attr_reader :player1, :player2, :player1_turn

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end
  
  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2    
    @player1_turn = true
    moves
  end

  def current_player
    player1_turn ? @player1 : @player2   
  end

  def player_name(player)
    player.name
  end  

  def make_player_choice(choice)
    current_player.make_choice(choice)
  end

  def player_choice(player)
    player.choice
  end
  

  def results_message
    if tie?
      'The game was a tie'
    elsif player1_wins?
      "#{player1.name} wins"
    else 
      "#{player2.name} wins"
    end
  end
  
  def switch_turn
    @player1_turn = !@player1_turn
  end
 
  private

  def tie?
    player_choice(player1) == player_choice(player2)
  end

  def moves
    @moves = ['Scissors', 'Rock', 'Spock', 'Paper', 'Lizard']
  end

  def moves_index
    @moves_index = ['Spock', 'Rock', 'Scissors', 'Lizard', 'Paper']
  end

  def num_of_shifts
    @num_of_shifts = moves_index.index(player_choice(player1)) 
  end

  def set_moves_order
    num_of_shifts.times { @moves.unshift(@moves.pop) }
  end

  def player1_wins?
    set_moves_order
    @moves.index(player_choice(player1)) > @moves.index(player_choice(player2)) 
  end
end
