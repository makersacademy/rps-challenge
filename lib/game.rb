require_relative 'computer'
require_relative 'score'

class Game
  attr_reader :current_player, :opponent, :score

  HANDS_BEATEN_BY = { 
    'Rock' => ['Scissors', 'Lizard'], 
    'Paper' => ['Rock', 'Spock'], 
    'Scissors' => ['Lizard', 'Paper'],
    'Lizard' => ['Paper', 'Spock'],
    'Spock' => ['Rock', 'Scissors']
  }

  def initialize(opponent = Computer.new, score = Score.new)
    @opponent = opponent
    @score = score
  end

  def assign_player(current_player)
    @current_player = current_player
  end

  def play_round(choice)
    @current_player.play_hand(choice)
    @opponent.play_hand
  end

  def verdict
    return draw if opponent.hand == current_player.hand
    return player_wins if HANDS_BEATEN_BY[current_player.hand].include? opponent.hand

    player_loses
  end

  @current_game = new

  def self.new_game(player, opponent = nil)
    @current_game = new(opponent)
    @current_game.assign_player(player)
  end

  def self.instance
    @current_game
  end

  private

  def draw
    score.points_for_both 
    'DRAW' 
  end

  def player_wins
    score.one_to_player
    'YOU WIN'
  end

  def player_loses
    score.one_to_opponent
    'YOU LOSE'
  end
end
