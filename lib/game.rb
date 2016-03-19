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
    starting_moves_order
  end

  def player1_name
    @player1.name
  end

  def player2_name
    @player2.name
  end

  def current_player
    player1_turn ? @player1 : @player2
    
  end
  
  def current_player_name
    current_player.name
  end

  def make_player_choice(choice)
    current_player.make_choice(choice)
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
    @player1_turn = !@player1_turn
  end
  private
  attr_reader :moves


  def tie?
    player1_choice == player2_choice
  end

  def player1_wins?
    calculate_winner
  end

  def starting_moves_order
    @moves = ['Scissors', 'Rock', 'Spock', 'Paper', 'Lizard']
  end

  def steps_to_reorder
    @times = 0 if player1_choice == 'Spock'
    @times = 1 if player1_choice == 'Rock'
    @times = 2 if player1_choice == 'Scissors'
    @times = 3 if player1_choice == 'Lizard'
    @times = 4 if player1_choice == 'Paper'
    @times.times { set_moves_order }
  end

  def set_moves_order
    @moves.unshift(@moves.pop)
  end

  def calculate_winner
    steps_to_reorder
    @moves.index(player1_choice) > @moves.index(player2_choice) 
  end
end
