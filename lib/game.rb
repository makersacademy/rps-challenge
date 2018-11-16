require 'robot'

class Game
  def self.see_player_1
    @player_1
  end

  def self.see_player_2
    @player_2
  end

  def self.start(name_1, name_2)
    name_2 = "The Robot" if name_2 == ""
    @player_1 = name_1
    @player_2 = name_2
    @moves = ['Rock', 'Paper', 'Scissors']
    @outcomes = ["No-one wins!", "#{@player_1} wins!", "#{@player_2} wins!"]
    @result = {}
  end

  def self.see_result
    @result
  end

  def self.play_a_round(player_move, opponent_move = Robot.move(@moves))
    @result[:player_1_move] = player_move
    @result[:player_2_move] = opponent_move
    @result[:outcome] =
      outcome(@result[:player_1_move], @result[:player_2_move])
  end

  def self.outcome(move_1, move_2)
    difference = @moves.find_index(move_1) - @moves.find_index(move_2)
    @outcomes[difference % 3]
  end
end
