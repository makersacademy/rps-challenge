require_relative 'computer'

class Game

  attr_reader :player_1, :player_2, :win_count, :tie_count, :loss_count

  def initialize player_1,player_2=Computer.new
    @player_1 = player_1
    @player_2 = player_2
    @moves = ['Rock', 'Paper', 'Scissors']
    @win_count = 0
    @tie_count = 0
    @loss_count = 0
  end

  def self.create player
    @game = Game.new player
  end

  def self.object
    @game
  end

  def result
    play_1_move = @moves.find_index @player_1.choice
    play_2_move = @moves.find_index @player_2.choice
    if (play_1_move == play_2_move)
      @tie_count += 1
      'Tie'
    elsif (((play_1_move - play_2_move) % 3) == 1)
      @win_count += 1
      'Win'
    else
      @loss_count += 1
      'Lose'
    end
  end
end
