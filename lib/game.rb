require_relative 'player'

class Game

  attr_reader :player_1, :player_2

  OPTIONS = ["rock", "paper", "scissors"]

  RULES = ["Rock blunts scissors", "Scissors cuts paper", "Paper wraps rock"]

  def initialize playerClass
    @player_1 = initialize_player playerClass
    @player_2 = initialize_player playerClass


    player_1.opponent = player_2
    player_2.opponent = player_1
  end

  def initialize_player playerClass
    playerClass.new
  end

  def over?
    !player_1.choice.nil? and !player_1.opponent.choice.nil?
  end

  def won_lost_or_tied player
    fail 'You have to choose between rock, paper or scissors' unless player.choice
    fail 'Erm, you have no opponent :/' unless player.opponent
    fail 'Still waiting for your opponent to decide' unless player.opponent.choice

    if tied? player
      "You've tied"
    elsif winner? player
      "You won! :)"
    else
      "You lost :("
    end
  end

  private

  def winner? player
    rock_paper_scissors player
  end

  def tied? player
    player.choice == player.opponent.choice
  end

  def choice_to_number player
    to_convert = player.choice
    OPTIONS.index(to_convert)
  end

  def rock_paper_scissors player

    your_number = choice_to_number(player)
    opponents_number = choice_to_number(player.opponent)

    (your_number - opponents_number) % OPTIONS.count > 0 and (your_number - opponents_number) % OPTIONS.count <= OPTIONS.count / 2

  end


end
