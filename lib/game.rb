require './lib/player.rb'

class Game

PLAY_OPTIONS = ["rock", "paper", "scissors"]

attr_reader :play_options, :computer

  def initialize
    @computer = computer
    @cpu_choice
    @play_options = PLAY_OPTIONS
  end

  def cpu_choice
    PLAY_OPTIONS.sample
  end

  def win?
    return true if @user_choice = "rock" && @cpu_choice = "scissors"
    return true if @user_choice = "paper" && @cpu_choice = "rock"
    return true if @user_choice = "scissors" && @cpu_choice = "paper"
    return false
  end

  def draw?
    @user_choice == @cpu_choice
  end

end
