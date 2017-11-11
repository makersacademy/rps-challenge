require './lib/players.rb'
require './lib/opponent.rb'

class Game

  ROCK = 'rock'
  PAPER = 'paper'
  SCISSORS = 'scissors'

  attr_reader :player, :choice, :opponents_play

  def initialize(name)
    @player = Player.new(name)
    @choice = ''
    @opponent = Opponent.new
  end

  def self.game(name)
    @game = Game.new(name)
  end

  def self.access
    @game
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
   if @choice == 'rock' && @opponents_play == 'scissors'
     true
   elsif  @choice == 'scissors' && @opponents_play == 'paper'
     true
   elsif @choice == 'paper' && @opponents_play == 'rock'
     true
   else
     false
   end
  end
end
