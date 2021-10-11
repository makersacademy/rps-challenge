require_relative "rps"

class MultiPlayer
  include Action
  
  attr_accessor :player2
  attr_reader :player1, :player1_choice, :player2_choice, :player1_turn, :player2_turn
  
  DEFAULT_CHOICE = ["rock", "paper", "scissors"].freeze

  def initialize(player1)
    @player1 = player1
    @player2 = nil
    @player1_choice = nil
    @player2_choice = nil
    @player1_turn = 1
    @player2_turn = 1
  end

  def player1_random
    @player1_choice = DEFAULT_CHOICE.sample
    @player1_turn += 1
  end
  
  def player2_random
    @player2_choice = DEFAULT_CHOICE.sample
    @player2_turn += 1
  end
  
  def player1_option(type)
    @player1_choice = type
    @player1_turn += 1
  end
  
  def player2_option(type)
    @player2_choice = type
    @player2_turn += 1
  end
  
  def self.create(player1)
    @multi_game = MultiPlayer.new(player1)
  end
  
  def self.instance
    @multi_game
  end
  
  def turn_player1?
    return true if @player1_turn <= @player2_turn
    false
  end
  
  def turn_player2?
    return true if @player2_turn <= @player1_turn
    false
  end
  
  def turn_compare?
    return true if @player2_turn == @player1_turn
    false
  end
  
end
