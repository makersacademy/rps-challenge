class Game
  attr_reader :player_1, :player_2, :whose_turn
  attr_writer :chosen_move

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @whose_turn = player_1
    @chosen_move = nil
    @moves = [:rock, :paper, :scissors]
    @winning_actions = [
      'rock crushes scissors',
      'paper wraps rock',
      'scissors cut paper'
    ]
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def get_move
    if @whose_turn.is_computer
     @whose_turn.move = @moves.sample
    else
      @whose_turn.move =@chosen_move
    end
  end


  def switch_turns
    @whose_turn = @whose_turn == @player_1 ? @player_2 : @player_1    
  end

  def winner(player_1_move, player_2_move)
    if player_1_move == player_2_move
      :draw
    elsif @moves[@moves.index(player_1_move) - 1] == player_2_move
      @player_1
    elsif @moves[@moves.index(player_2_move) - 1] == player_1_move
      @player_2
    end
  end

  def result
    if winner == :draw
      "You both chose #{@player_1.move.to_s}!"
    else
      "#{winner} wins: #{@winning_actions[@moves.index(winner.move)]}."
    end 
  end

  def record_result
    case winner
    when :draw
      @player_1.draw
      @player_2.draw
    when @player_1
      @player_1.win
      @player_2.lose
    when @player_2
      @player_2.win
      @player_2.lose
    end
  end
end