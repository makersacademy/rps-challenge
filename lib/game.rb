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

  # Todo, refactor
  def player param # rubocop: disable all
    if param.is_a? String
      return @player_one if @player_one.name == param
      return @player_two if @player_two.name == param
      return nil
    elsif param.is_a? Fixnum
      return @player_one if @player_one.object_id == param
      return @player_two if @player_two.object_id == param
      return nil
    else
      fail 'Can not search for player with anything except name or obj_id'
    end
  end
end
