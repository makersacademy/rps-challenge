require_relative 'player'

class PapeRSGame
  attr_reader :outcome, :plays_hand, :plays, :plays_hand

  def initialize
    @game_plays = ['p', 'r', 's']
  end

  def plays
    @plays_hand = @game_plays.shuffle.first
    @plays_hand
  end

  def outcome (player)
    if tie? (player)
      puts "computer plays #{plays_hand} - it's a tie!"
    elsif player_win? (player)
      puts "computer plays #{plays_hand} - you win!"
    else puts "computer plays #{plays_hand} - you lose"
    end
  end

  def tie? (player)
    player.hand == self.plays_hand.to_s
  end

  def player_win? (player)
    win_with_paper?(player) || win_with_scissors?(player) || win_with_rock?(player)
  end

  def win_with_paper? (player)
    player.hand == 'p' && self.plays_hand.to_s == 'r'
  end

  def win_with_scissors? (player)
    player.hand == 's' && self.plays_hand.to_s == 'p'
  end

  def win_with_rock? (player)
    player.hand == 'r' && self.plays_hand.to_s == 's'
  end
end

