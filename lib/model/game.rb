require_relative '../app'

class Game

  def initialize(player)
    @player = player
  end

  def return_player_name
    @player.name
  end

  def make_player_choice(selection)
    @player.choose(selection)
  end

  def return_player_choice
    @player.choice
  end

  def make_robo_choice
    @choice = [:rock, :paper, :scissors].sample
  end

  def return_robo_choice
    @choice
  end

  def calculate_result

    case
    when return_robo_choice == @player.choice
      @result = "It's a draw."
    when (return_robo_choice == :rock) && (@player.choice == :paper)
      @result = "You won, ok. Big deal."
    when (return_robo_choice == :rock) && (@player.choice == :scissors)
      @result = "YOU LOST, GET OVER IT"
    when (return_robo_choice == :paper) && (@player.choice == :rock)
      @result = "YOU LOST, GET OVER IT"
    when (return_robo_choice == :paper) && (@player.choice == :scissors)
      @result = "You won, ok. Big deal."
    when (return_robo_choice == :scissors) && (@player.choice == :rock)
      @result = "You won, ok. Big deal."
    when (return_robo_choice == :scissors) && (@player.choice == :paper)
      @result = "YOU LOST, GET OVER IT"
    end

    @result

  end


end
