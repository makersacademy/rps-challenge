require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :player_1_choice, :player_2_choice, :computer_choice

  WIN = { 'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock' }
  OPTIONS = ['rock', 'paper', 'scissors']

  def initialize(player_1, player_2 = nil)
    @player_1 = player_1
    @player_2 = player_2
  end

  def player_choice(player_1_choice)
    @player_1_choice = player_1_choice.downcase.to_s
  end

  def check_entry(choice)
    OPTIONS.include? choice
  end

  def check_player_entry(player1 = nil, player2 = nil)
    return false if player1 || player2.nil?
    true
  end

  def player_two_choice(player_2_choice)
    @player_2_choice = player_2_choice.to_s
  end

  def computer_choice?
    @computer_choice = ["rock", "paper", "scissors"].sample
  end

  def win?(player_choice, computer_or_player_2_choice)
    return true if WIN[player_choice][computer_or_player_2_choice]
    return 'draw' if player_choice == computer_or_player_2_choice
    return false
  end

end
