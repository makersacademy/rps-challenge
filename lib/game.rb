require './lib/player.rb'

class Game

PLAY_OPTIONS = ["rock", "paper", "scissors"]

attr_reader :play_options, :computer

  def initialize(player1)
    @player = player1
    @cpu_choice = nil
    @play_options = PLAY_OPTIONS
  end

  def player_name
    @player.name1
  end

  def player_choice(choice)
    @player.user_choice=(choice)
  end

  def what_player_chose
    @player.weapon
  end

  def cpu_choice
    @cpu_choice = PLAY_OPTIONS.sample
  end

  def win
    return :draw if draw?
    return :win if what_player_chose == "rock" && @cpu_choice == "scissors"
    return :win if what_player_chose  == "paper" && @cpu_choice == "rock"
    return :win if what_player_chose == "scissors" && @cpu_choice == "paper"
    return :false
  end

  def draw?
    what_player_chose == @cpu_choice
  end

end
