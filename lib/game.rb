require_relative 'player'
require_relative 'robot'

class Game
  @moves = ['Rock', 'Paper', 'Scissors']

  class << self
    def see_player_1
      @player_1.name
    end

    def see_player_2
      @player_2.name
    end

    def current_player
      return see_player_1 unless (@player_1.robot? || @result[:player_1_move])
      return see_player_2 unless (@player_2.robot? || @result[:player_2_move])
    end

    def start(name_1, name_2)
      @player_1 = Player.new(name_1)
      @player_2 = Player.new(name_2)
      @outcomes =
        ["No-one wins!", "#{@player_1.name} wins!", "#{@player_2.name} wins!"]
      begin_round
    end

    def begin_round
      @result = {}
      end_round unless need_human_move?
    end

    def next_page
      @result[:outcome] ? '/result' : '/play'
    end

    def record_move(move)
      @result[:player_2_move] = move if current_player == @player_2.name
      @result[:player_1_move] = move if current_player == @player_1.name
      end_round unless need_human_move?
    end

    def see_result
      @result
    end

    private

    def need_human_move?
      !(@player_1.robot? || @result[:player_1_move]) ||
        !(@player_2.robot? || @result[:player_2_move])
    end

    def end_round
      robot_moves
      @result[:outcome] =
        outcome(@result[:player_1_move], @result[:player_2_move])
    end

    def robot_moves
      @result[:player_1_move] = Robot.move(@moves) if @player_1.robot?
      @result[:player_2_move] = Robot.move(@moves) if @player_2.robot?
    end

    def outcome(move_1, move_2)
      difference = @moves.find_index(move_1) - @moves.find_index(move_2)
      @outcomes[difference]
    end
  end
end
