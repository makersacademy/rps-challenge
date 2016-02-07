require './lib/player.rb'

class Game

PLAY_OPTIONS = ["rock", "paper", "scissors"]

attr_reader :play_options, :computer

  def initialize(player1)
    @player = player1
    @cpu_choice
    @play_options = PLAY_OPTIONS
  end

  def player_name
    @player.name1
  end

  def player_choice(choice)
    @player.user_choice=(choice)
  end

  def cpu_choice
    PLAY_OPTIONS.sample
  end

  def win?
    return true if @player.user_choice = "rock" && @cpu_choice = "scissors"
    return true if @player.user_choice = "paper" && @cpu_choice = "rock"
    return true if @player.user_choice = "scissors" && @cpu_choice = "paper"
    return false
  end

  def draw?
    @player.user_choice == @cpu_choice
  end

end
