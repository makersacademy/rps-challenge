# frozen_string_literal:true

class Game
  attr_reader :player_hand, :player # , :opponent_hand

  def initialize(player)
    @player = player
    @player_hand = nil
    @opponent_hand = nil
    @rock = 'rock'
    @paper = 'paper'
    @scissors = 'scissors'
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def rock
    @player_hand = @rock
  end

  def paper
    @player_hand = @paper
  end

  def scissors
    @player_hand = @scissors
  end

  def opponent_hand
    @opponent_hand = random_hand
  end

  def random_hand
    %w[rock paper scissors].sample
  end

  def winner?
    if @player_hand == 'rock' && (@opponent_hand == 'scissors')
      p true
    elsif @player_hand == 'paper' && @opponent_hand == 'rock'
      true
    elsif @player_hand == 'scissors' && @opponent_hand == 'paper'
      true
    else
      false
    end
  end

  def play
    # @player_hand = "rock"
    # @opponent_hand = "scissors"
    winner?
  end
end
