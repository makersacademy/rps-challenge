class Game
  attr_reader :player_move, :computer_move, :who_won

  def initialize(player_move)
    @computer_move = ['scissors','paper','rock'].sample
    fight
    @player_move = player_move
  end

  def fight
    @computer_move = @computer_move
    if @player_move == @computer_move
      @who_won = "It's a draw!"

    elsif @player_move == 'rock'
      if @computer_move == 'paper'
        @who_won ='You have lost'
      else
        @who_won = 'You have won!'
      end

    elsif @player_move == 'paper'
      if @computer_move == 'scissors'
        @who_won  ='You have lost'
      else
        @who_won = 'You have won!'
      end

    elsif @player_move == 'scissors'
      if @computer_move == 'rock'
        @who_won = 'You have lost'
      else
        @who_won = 'you have won!'
      end

    end
  end

end
