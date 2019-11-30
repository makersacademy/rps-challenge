require_relative 'computer'

class Game
  attr_reader :current_player, :opponent

  IS_BEATEN_BY = { 'Rock' => 'Scissors', 'Paper' => 'Rock', 'Scissors' => 'Paper' }
  
  def initialize(opponent = Computer.new)
    @opponent = opponent
  end

  def assign_player(current_player)
    @current_player = current_player
  end

  def play_round(choice)
    @current_player.play_hand(choice)
    @opponent.play_hand
  end

  def verdict
    return 'DRAW' if opponent.hand == current_player.hand
    return 'YOU WIN' if opponent.hand == IS_BEATEN_BY[current_player.hand]
    
    'YOU LOSE'
  end

  @current_game = new

  def self.new_game(player, opponent = nil)
    @current_game = new(opponent)
    @current_game.assign_player(player)
  end

  def self.instance
    @current_game
  end
end
