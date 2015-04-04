class Game
  attr_reader :player_one, :player_two

  def initialize player1, player2
    @player_one = player1
    @player_two = player2
  end

  def carry_out_round
    if @player_one.ready? && @player_two.ready?
      winner
    else
      fail 'Players are not ready'
    end
  end

  # Todo, refactor
  def winner # rubocop: disable all
    hand1 = @player_one.make_hand
    hand2 = @player_two.make_hand
    return 'It\'s a tie!' if hand1 == hand2
    return @player_one if hand1 == 'paper' && hand2 == 'rock'
    return @player_two if hand1 == 'paper' && hand2 == 'scissors'
    return @player_one if hand1 == 'scissors' && hand2 == 'paper'
    return @player_two if hand1 == 'scissors' && hand2 == 'rock'
    return @player_one if hand1 == 'rock' && hand2 == 'scissors'
    return @player_two if hand1 == 'rock' && hand2 == 'paper'
  end
end
