
class RpsGame

  def result(player_hand)
    compare_hands(player_hand, random_hand)
  end

  private
  
  def random_hand
    ['rock', 'paper', 'scissors'].sample
  end

  def compare_hands(player_hand, rand_opponent)
    return 'win' if player_hand == 'rock' && rand_opponent == 'scissors'
    return 'win' if player_hand == 'scissors' && rand_opponent == 'paper'
    return 'win' if player_hand == 'paper' && rand_opponent == 'rock'
    return 'draw' if player_hand == rand_opponent
    'lose'
  end
end
