require_relative 'player'
require_relative 'opponent'

class Game

  attr_reader :player, :opponent

  def initialize player, opponent
    @player = player
    @opponent = opponent
  end

  def outcome
    if draw?
      'It\'s a draw!'
    else
      winner? ? 'You won!!' : 'The computer beat you..'
    end
  end

  def draw?
    @opponent.weapon == @player.weapon
  end

  def winner?
    if @opponent.weapon == 'rock'
      if @player.weapon == 'paper'
        true
      else
        false
      end
    elsif @opponent.weapon == 'paper'
      if @player.weapon == 'scissors'
        true
      else
        false
      end
    elsif @opponent.weapon == 'scissors'
      if @player.weapon == 'rock'
        true
      else
        false
      end
    end
  end

end