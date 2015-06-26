require_relative 'player'

class RockPaperScissors

  attr_reader :player_1, :player_2

  def initialize playerClass
    @player_1 = initialize_player playerClass
    @player_2 = initialize_player playerClass


    player_1.opponent = player_2
    player_2.opponent = player_1
  end

  def initialize_player playerClass
    player = playerClass.new
    player
  end

  def over?

  end

  def won_lost_or_tied player
    fail 'You have to choose between rock, paper or scissors' unless player.choice
    fail 'Erm, you have no opponent :/' unless player.opponent
    fail 'Still waiting for your opponent to decide' unless player.opponent.choice

    if tied?
      "You've tied"
    elsif winner?
      "You won! :)"
    else
      "You lost :("
    end
  end

  private

  def winner?
    rock_paper_scissors
  end

  def tied? player
    player.choice == player.opponent.choice
  end

  def choice_to_number player
    choice = player.choice
    rps_hash = { "rock" => 0, "scissors" => 2, "paper" => 1 }
    rps_hash[choice]
  end

  def rock_paper_scissors player

    opponent_choice = player.opponent.choice

    your_number = choice_to_number(player)
    opponents_number = choice_to_number(opponent_choice)

    (your_number - opponents_number) % 3 == 1

  end


end
