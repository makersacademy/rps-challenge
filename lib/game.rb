class Game
  attr_reader :player_1, :player_2, :current_player
  
  def initialize(player_1, player_2)
    @player_1 = [player_1]
    player_2 == '' ?  @player_2 = ['The Computer'] : @player_2 = [player_2]
    @current_player = @player_1
  end

  def move(player, choice = random_move)
    player.push(choice)
    next_player
  end

  def random_move
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def winner
    if @player_1[1] == @player_2[1]
      'EVERYBODY!' 
    elsif (@player_1[1] == 'Rock' && @player_2[1] == 'Scissors') || (@player_1[1] == 'Scissors' && @player_2[1] == 'Paper') || (@player_1[1] == 'Paper' && @player_2[1] == 'Rock')
      "#{@player_1[0].upcase}!"
    else
      "#{@player_2[0].upcase}!"
    end
  end

  private 

  def next_player
    @current_player = @player_2
  end
end