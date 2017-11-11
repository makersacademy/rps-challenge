require './lib/opponent.rb'

class Turn

  ROCK = 'rock'
  PAPER = 'paper'
  SCISSORS = 'scissors'
  POINT = 1

attr_reader :opponents_play, :choice, :score

  def initialize
    @choice = ''
    @opponent = Opponent.new
  end

  def rock
    @choice = ROCK
  end

  def paper
    @choice = PAPER
  end

  def scissors
    @choice = SCISSORS
  end

  def opponents_play
    @opponents_play = @opponent.random_generator
  end

  def win?
    if @choice == @opponents_play
      nil
    else
    @wins = @choice && @opponents_play
    case @wins
    when 'rock', 'scissors'
      true
    when 'scissors', 'paper'
      true
    when 'paper', 'rock'
      true
    else
      false
    end
  end
end

  def finish
    if win?
      1
    else
      0
    end
  end
end
