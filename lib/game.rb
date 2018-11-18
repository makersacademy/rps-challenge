require_relative 'player'
require_relative 'robot'

class Game
  @moves = ['Rock', 'Paper', 'Scissors']

  def self.see_player_1
    @player_1.name
  end

  def self.see_player_2
    @player_2.name
  end

  def self.start(name_1, name_2)
    @player_1 = Player.new(name_1)
    @player_2 = Player.new(name_2)
    @outcomes =
      ["No-one wins!", "#{@player_1.name} wins!", "#{@player_2.name} wins!"]
    begin_round
  end

  def self.begin_round
    @result = {}
  end

  def self.see_result
    @result
  end

  def self.next_page
    @result[:outcome] ? '/result' : '/play'
  end

  def self.play_a_round(
    player_move = Robot.move(@moves),
    opponent_move = Robot.move(@moves)
  )
    @result[:player_1_move] = player_move
    @result[:player_2_move] = opponent_move
    @result[:outcome] =
      outcome(@result[:player_1_move], @result[:player_2_move])
  end

  def self.outcome(move_1, move_2)
    difference = @moves.find_index(move_1) - @moves.find_index(move_2)
    @outcomes[difference]
  end
end
