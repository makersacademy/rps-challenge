require_relative "player"
require_relative "computer"

class Game

  attr_reader :player1, :player2, :choices_array, :winner

  def initialize player1, player2
    @player1 = player1
    @player2 = player2
    player1_win_array
    player2_win_array
  end

  def self.create player1, player2
    @game = Game.new player1, player2
  end

  def self.instance
    @game
  end

  def choices player1_choice, player2_choice
    @choices_array =  [player1_choice, player2_choice]
  end

  def result
    referee
    @winner
  end

  private

  def referee
    player1_win
    player2_win
    points
  end

  def points
    @winner.win if @winner
  end

  def player1_win
     @winner = @player1 if @player1_win_array.include? @choices_array
  end

  def player2_win
    @winner = @player2 if @player2_win_array.include? @choices_array
  end

  def player1_win_array
    @player1_win_array = [["rock", "scissors"], ["scissors", "paper"], ["paper", "rock"]]
  end

  def player2_win_array
    @player2_win_array = [["scissors", "rock"], ["paper", "scissors"], ["rock", "paper"]]
  end
end
