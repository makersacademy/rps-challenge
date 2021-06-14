class Game 
  attr_reader :player_turn, :cpu_turn

  def initialize(player_turn, cpu_turn)
    p @player_turn = player_turn
    @cpu_turn = cpu_turn
  end

  def who_won
    if player_turn == 'rock' && cpu_turn == 'scissors'
      player_won
    elsif player_turn == 'paper' && cpu_turn == 'rock'
      player_won
    elsif player_turn == 'scissors' && cpu_turn == 'paper'
      player_won
    else 
      cpu_won
    end
  end

  def player_won

  end

  def cpu_won

  end


  
    # def player
    #   @players.first
    # end
  
    # def cpu
    #   @players.last
    # end
  
    # def cpu_turn
    #   rps_array.sample
    # end
  
    # def switch_turns
    #   @current_turn == player ? @current_turn = cpu : @current_turn = player
    # end
end
