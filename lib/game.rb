
class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def player_1
    @player_1
  end

  def player_2
    @player_2
  end

  def result
    if @player_1_move == 'Rock'
      draw if @player_2_move == 'Rock'
      win if @player_2_move == 'Scissors'
      lose if @player_2_move == 'Paper'
    elsif @player_1_move == 'Paper'
      draw if @player_2_move == 'Paper'
      win if @player_2_move == 'Rock'
      lose if @player_2_move == 'Scissors'
    elsif @player_1_move == 'Scissors'
      draw if @player_2_move == 'Scissors'
      win if @player_2_move == 'Paper'
      lose if @player_2_move == 'Rock'
    end
  end


  private

  def draw
    "It's a draw!"
  end

  def win
    "You win!"
  end

  def lose
    "You lose!"
  end

end
