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
  end

  def player1_name
    @player1.name
  end

  def player2_name
    @player2.name
  end

  def current_player
   # player1_turn ? @player_1 : @player_2
    player_1
  end
  
  def current_player_name
    current_player.name
  end

  def make_player_choice(choice)
    @current_player.make_choice(choice)
  end

  def player1_choice
    player1.choice
  end

  def player2_choice
    player2.choice
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
    @player_1_turn = !@player_1_turn
  end
  private


  def tie?
    player1_choice == player2_choice
  end

  def player1_wins?
      (player1_choice == 'Rock' && player2_choice == 'Scissors') ||
      (player1_choice == 'Paper' && player2_choice == 'Rock') ||
      (player1_choice == 'Scissors' && player2_choice == 'Paper')
  end
end
