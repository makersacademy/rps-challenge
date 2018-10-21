require_relative 'player'

class Game

  attr_reader :player

  def initialize(player)
    @player = player
    @turn = 1
  end

  def move(input, comp)

    # case input
    #   when 'rock'
    #     'player 2 wins!' if comp == 'paper'
    #     'player 1 wins!' if comp == 'scissors'
    #     'draw' if comp == 'rock'
    #   when 'paper'
    #     'player 2 wins!' if comp == 'scissors'
    #     'player 1 wins!' if comp == 'rock'
    #     'draw' if comp == 'paper'
    #   when 'scissors'
    #     'player 2 wins!' if comp == 'rock'
    #     'player 1 wins!' if comp == 'paper'
    #     'draw' if comp == 'scissors'



    if input == 'rock' && comp == 'paper'
      'player 2 wins!'
    elsif input == 'rock' && comp == 'scissors'
      'player 1 wins!'
    elsif input == 'paper' && comp == 'rock'
      'player 1 wins!'
    elsif input == 'paper' && comp == 'scissors'
      'player 2 wins!'
    elsif input == 'scissors' && comp == 'paper'
      'player 1 wins!'
    elsif input == 'scissors' && comp == 'rock'
      'player 2 wins!'
    else
      'draw'
    end
  end

  def comp_move
    @comp = ['rock', 'paper', 'scissors'].sample
  end

  def store(move)
    @move = move
  end


end
