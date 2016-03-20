require './lib/player'

class Game
  
  MOVES = {'Rock' => ['Scissors', 'Lizard'],
           'Paper' => ['Rock', 'Spock'],
           'Scissors' => ['Spock', 'Paper'],
           'Spock' => ['Rock', 'Scissors'],
           'Lizard' => ['Spock', 'Paper'] }


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
  end

  def current_player
    player1_turn ? @player1 : @player2   
  end

  def player_name(player)
    player.name
  end  

  def winner
    if tie?
      nil
    elsif player1_wins?
      player1
    else
      player2
    end
  end

  def make_player_choice(choice)
    current_player.make_choice(choice)
  end

  def player_choice(player)
    player.choice
  end
  

  
  def switch_turn
    @player1_turn = !@player1_turn
  end
 
  private

  
  def player1_wins?
    MOVES[player_choice(player1)].include? player_choice(player2)
  end

  def tie?
    player_choice(player1) == player_choice(player2)
  end 

end
