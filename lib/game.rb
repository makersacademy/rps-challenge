class Game
  attr_reader :player_1_name, :player_2_name, :display_reset_button, :ties, :message, :round, :player_1_win, :player_2_win
  def initialize(player_1_name, player_2_name)
    @player_1_name = player_1_name
    @player_2_name = player_2_name
    @player_1_win = 0
    @player_2_win = 0
    @ties = 0
    @round = 0
    @display_reset_button = false
  end 

  def play_a_match(player_1_move, player_2_move)
    if player_1_move == player_2_move
      @ties += 1
    elsif player_1_move == "Rock" && player_2_move == "Paper"
      @player_2_win += 1
    elsif player_1_move == "Rock" && player_2_move == "Scissor"
      @player_1_win += 1
    elsif player_1_move == "Paper" && player_2_move == "Rock"
      @player_1_win += 1
    elsif player_1_move == "Paper" && player_2_move == "Scissor"
      @player_2_win += 1
    elsif player_1_move == "Scissor" && player_2_move == "Rock"
      @player_2_win += 1
    elsif player_1_move == "Scissor" && player_2_move == "Paper"
      @player_1_win += 1
    end
    @round += 1
    if game_over?
      @display_reset_button = true
    else
      @display_reset_button = false
    end
  end

  def reset
    @player_1_win = 0
    @player_2_win = 0
    @ties = 0
    @round = 0
    @display_reset_button = false
  end

  
  private
  def game_over?
    if @round < 10
      return false
    end

    if @player_2_win > @player_1_win
      @message = "#{@player_2_name} won!"
    elsif @player_2_win < @player_1_win
      @message = "#{@player_1_name} won!"
    else
      @message = "Dead heat!"
    end
    return true
  end
end
